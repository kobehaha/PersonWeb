package com.zzy.service;

import com.zzy.result.BlogDataResult;

public interface BlogSevice {
	
	public BlogDataResult getAllBlogs(int page,int rows) throws Exception;

}
