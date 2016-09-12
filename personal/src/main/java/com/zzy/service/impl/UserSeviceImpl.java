package com.zzy.service.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzy.mapper.UserMapper;
import com.zzy.pojo.User;
import com.zzy.service.UserSevice;
import com.zzy.util.WebResult;

@Service
public class UserSeviceImpl implements UserSevice {

	@Autowired
	private UserMapper userDao;


	@Override
	public User findUserByAccount(int account) throws Exception  {
		User user = new User();
		user.setUser_id(account);
		User userResult = userDao.selectByAccount(user);
		return userResult;
	}

	@Override
	public WebResult userLogin(int username, String password, HttpServletRequest request,
			HttpServletResponse response) {
		return null;
	}

}
