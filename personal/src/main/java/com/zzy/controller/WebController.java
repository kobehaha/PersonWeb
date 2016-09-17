package com.zzy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebController {

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("/tour")
	public String tour() {
		return "tour";
	}

	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}

	@RequestMapping("/pricing")
	public String pricing() {
		return "pricing";
	}

	@RequestMapping("/writeBlog")
	public String writeBlog() {
		return "writeBlog";
	}

	@RequestMapping("/qiniu")
	public String qiniu() {
		return "qiniu";
	}
}
