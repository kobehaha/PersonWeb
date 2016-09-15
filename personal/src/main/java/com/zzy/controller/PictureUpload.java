package com.zzy.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.zzy.util.JsonUtils;

@Controller
public class PictureUpload {

	@RequestMapping(value = "/upload",method = RequestMethod.POST)
	@ResponseBody
	public String upload(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request,
			ModelMap model) {
		Map<String, Object> resultMap = new HashMap<>();
		System.out.println("开始");
		String path = request.getSession().getServletContext().getRealPath("uploadA");
		System.out.println(path);
		String fileName = file.getOriginalFilename();
		// String fileName = new Date().getTime()+".jpg";
		
		File targetFile = new File("/Users/kobe/Desktop/", fileName);
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
		String resultJson=JsonUtils.objectToJson(resultMap);
		return resultJson;
	}
}
