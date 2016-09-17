package com.zzy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.zzy.pojo.File;
import com.zzy.service.FileSevice;

@Controller
public class QiniuController {
	
	@Autowired
	FileSevice fileSevice;

	@RequestMapping(value = "/qiniu", method = RequestMethod.GET)
	public String getItemList(@RequestParam(value = "page", required = false, defaultValue = "1" ) int page,
			@RequestParam(value = "rows", required = false, defaultValue = "10") int rows, Model model) {
		List<File> result;
		try {
			result = fileSevice.getAllFileByPage();
			model.addAttribute("result", result);
			return "qiniu";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:index";
		}

	}
}
