package com.zzy.mapper;

import com.zzy.pojo.File;

public interface FileMapper {

	void insertFile(File file) throws Exception;
	
	void updateFile(File file) throws Exception;
}
