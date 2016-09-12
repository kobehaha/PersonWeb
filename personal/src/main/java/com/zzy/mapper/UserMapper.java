package com.zzy.mapper;

import com.zzy.pojo.User;

public interface UserMapper {
	User selectByAccount(User user) throws Exception;
	
	String selectPasswordByAccount(User user) throws Exception;
}