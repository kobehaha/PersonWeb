package com.zzy.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zzy.pojo.User;
import com.zzy.service.UserSevice;
import com.zzy.util.Constant;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserSevice userSevice;

	
	
	// 用户登录
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public java.util.Map<String, Object> userLogin(@RequestParam(value = "account", required = false) int account,
			@RequestParam(value = "password", required = true) String password, HttpServletRequest request,
			HttpServletResponse response) {
		/*
		 * try { WebResult result = userSevice.userLogin(username, password,
		 * request, response); return "redirect:/admin"; } catch (Exception e) {
		 * e.printStackTrace(); return null; }
		 */
		// return "admin";

		java.util.Map<String, Object> resultMap = new HashMap<String, Object>();
		HttpSession httpSession = request.getSession();

		User user;
		try {
			user = this.userSevice.findUserByAccount(account);
			if (user != null) {
				if (user.getPassword().equals(password.trim())) {
					httpSession.setAttribute("user", user);
					resultMap.put("resultCode", Constant.SUCCESS_CODE);
					resultMap.put("msg", "登录成功");
					resultMap.put("user", user);

				} else {
					resultMap.put("resultCode", Constant.PASSWORD_NOT_RIGHT);
					resultMap.put("msg", "密码错误");
				}

			} else {
				resultMap.put("resultCode", Constant.ACCOUNT_NOT_EXIST);
				resultMap.put("msg", "账户不存在");

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultMap;
	}

}
