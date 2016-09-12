package com.zzy.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zzy.pojo.User;
import com.zzy.util.WebResult;

public interface UserSevice {

	public WebResult userLogin(int username, String password, HttpServletRequest request,
			HttpServletResponse response) throws Exception;

	public User findUserByAccount(int account) throws Exception;

}
