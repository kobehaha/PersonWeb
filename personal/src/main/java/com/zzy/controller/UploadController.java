package com.zzy.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.qiniu.http.Response;
import com.zzy.result.QiniuResult;
import com.zzy.service.FileSevice;
import com.zzy.util.IDUtils;
import com.zzy.util.JsonUtils;
import com.zzy.util.QiniuUtils;

@Controller
public class UploadController {

	
	@Autowired
	private FileSevice fileSevice;

	@Value(value = "${QINIU_FILE}")
	String QINIU_FILE;

	@Value(value = "${BLOG_IMAGE_FILE}")
	String BLOG_IMAGE_FILE;
	
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	@ResponseBody
	public String upload(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request,
			ModelMap model) {
		Map<String, Object> resultMap = new HashMap<>();
		System.out.println("开始");
		File targetFile = new File("/application/fileSystem/images/blogImage/", IDUtils.genImageName());
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		// 保存
		try {
			file.transferTo(targetFile);
			resultMap.put("status", 1);
			resultMap.put("message", "upload success");
		} catch (Exception e) {
			e.printStackTrace();
			resultMap.put("status", 0);
			resultMap.put("message", "upload failure");
		}
		String resultJson = JsonUtils.objectToJson(resultMap);
		return resultJson;
	}

	@RequestMapping(value = "/qiniuUpload", method = RequestMethod.POST)
	@ResponseBody
	public String QiniuUpload(@RequestParam(value = "file", required = false) MultipartFile file,
			HttpServletRequest request, ModelMap model) {
		Map<String, Object> resultMap = new HashMap<>();
		String fileName = file.getOriginalFilename();
		String fileNameResult = IDUtils.genImageName() + fileName.substring(fileName.indexOf("."));
		File targetFile = new File("/application/fileSystem/qiniu/", fileNameResult);
		if (!targetFile.exists()) {
			targetFile.mkdirs();
		}
		try {
			/** 保存文件到文件服务器 **/
			file.transferTo(targetFile);

			/** 上传文件到七牛 **/
			Response result = QiniuUtils.upload("/application/fileSystem/qiniu/" + fileNameResult);

			QiniuResult jsonUtils = JsonUtils.jsonToPojo(result.bodyString(), QiniuResult.class);

			/** 写入数据库 **/
			com.zzy.pojo.File fileParma = new com.zzy.pojo.File();
			fileParma.setKeyValue(jsonUtils.getKey());
			fileParma.setHashValue(jsonUtils.getHash());
			fileParma.setCreateTime(new java.util.Date());
			fileParma.setUpdateTime(new java.util.Date());
			fileParma.setConvertName(fileNameResult);
			fileParma.setOrginName(fileName);
			fileParma.setSize(file.getSize());

			fileSevice.addFile(fileParma);
			
			/**转换处理**/
			QiniuUtils.ppt_Convert_pdf(jsonUtils.getKey());

			resultMap.put("status", 1);
			resultMap.put("message", "upload success");
		} catch (Exception e) {
			e.printStackTrace();
			resultMap.put("status", 0);
			resultMap.put("message", "upload failure");
		}
		String resultJson = JsonUtils.objectToJson(resultMap);
		return resultJson;
	}

}
