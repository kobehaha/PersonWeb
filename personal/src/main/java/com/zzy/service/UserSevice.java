package com.zzy.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzy.util.WebResult;

public interface UserSevice {

	public WebResult userLogin(String username, String password, HttpServletRequest request,
			HttpServletResponse response);

}
