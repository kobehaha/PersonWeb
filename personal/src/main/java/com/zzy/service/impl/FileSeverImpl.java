package com.zzy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzy.mapper.FileMapper;
import com.zzy.pojo.File;
import com.zzy.service.FileSevice;

@Service
public class FileSeverImpl implements FileSevice {

	@Autowired
	private FileMapper fileMapper;

	@Override
	public void addFile(File file) throws Exception {

		fileMapper.insertFile(file);
	}

	@Override
	public void updateFile(File file) throws Exception {

		fileMapper.updateFile(file);

	}

}
