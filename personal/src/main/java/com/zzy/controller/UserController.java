package com.zzy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class UserController {

	/*@Autowired
	private UserSevice userSevice;*/
	

	// 用户登录
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String  userLogin(String username, String password, HttpServletRequest request,
			HttpServletResponse response) {
	/*	try {
			WebResult result = userSevice.userLogin(username, password, request, response);
			return "redirect:/admin";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}*/
		return null;
	}

}
