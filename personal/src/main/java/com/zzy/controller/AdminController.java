package com.zzy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

	// 管理页面
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String getAdmin() {
		return "admin";

	}
}
