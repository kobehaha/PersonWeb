package com.zzy.service;

import java.util.List;

import com.zzy.pojo.File;

public interface FileSevice {

	public void addFile(File file) throws Exception;

	public void updateFile(File file) throws Exception;

	public List<File> getAllFileByPage();

}
