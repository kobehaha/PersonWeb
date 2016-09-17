package com.zzy.controller;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zzy.pojo.File;
import com.zzy.result.QiniuNotifyResult;
import com.zzy.service.FileSevice;
import com.zzy.util.Constant;
import com.zzy.util.JsonUtils;

@Controller
public class CallBackController {

	private static final Logger logger = LoggerFactory.getLogger(CallBackController.class);

	@Autowired
	private FileSevice fileSevice;

	@RequestMapping("/qiNiuCallBack")
	@ResponseBody
	public String getData(@RequestBody QiniuNotifyResult result, HttpServletResponse response) {

		response.setCharacterEncoding("utf-8");
		if (result != null) {
			int code = result.getCode();
			System.out.println("code is " + code);
			/** 处理成功在修改数据库 status 默认为1 **/
			if (code == 0) {
				if (result.getItems() != null && result.getItems().size() > 0) {
					File file = new File();
					file.setKeyValue(result.getInputKey());
					if (result.getItems().get(0).getCode() == 0) {
						file.setStatus(Constant.ConvertStatus.SUCCESS);
					}
					if (result.getItems().get(0).getCode() == 1) {
						file.setStatus(Constant.ConvertStatus.WATINGHADDING);
					}
					if (result.getItems().get(0).getCode() == 2) {
						file.setStatus(Constant.ConvertStatus.HADDING);
					}
					if (result.getItems().get(0).getCode() == 3) {
						file.setStatus(Constant.ConvertStatus.FAILES);
					}
					if (result.getItems().get(0).getCode() == 3) {
						file.setStatus(Constant.ConvertStatus.SUCCESS_NOT_NOTIFY);
					}
					file.setConvertHashValue(result.getItems().get(0).getHash());
					file.setConvertKeyValue(result.getItems().get(0).getKey());
					file.setPersistentId(result.getId());
					System.out
							.println("key=" + result.getInputKey() + "item code" + result.getItems().get(0).getCode());
					try {
						fileSevice.updateFile(file);
					} catch (Exception e) {
						e.printStackTrace();
						logger.error("qiniu call back exception " + e.getMessage());
					}
				}
			}
			if (code == 3) {
				logger.error("qiniu convert error", "convert error " + "resaon is " + result.getDesc() + "backname is "
						+ result.getInputBucket() + "pipe is " + result.getPipeline());
			}

		}
		return JsonUtils.objectToJson(result);
	}

}
