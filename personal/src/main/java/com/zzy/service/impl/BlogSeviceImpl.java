package com.zzy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zzy.mapper.PostMapper;
import com.zzy.pojo.Post;
import com.zzy.result.BlogDataResult;
import com.zzy.service.BlogSevice;
@Service
public class BlogSeviceImpl implements BlogSevice {

	@Autowired
	private PostMapper postMapper;

	@Override
	public BlogDataResult getAllBlogs(int page, int rows) throws Exception {
		// 分页
		PageHelper.startPage(page, rows);
		List<Post> items = postMapper.selectAllBlog();
		// 设置返回值对象
		BlogDataResult result = new BlogDataResult();
		result.setRows(items);
		PageInfo<Post> pageInfo = new PageInfo<>(items);
		result.setTotal(pageInfo.getTotal());
		return result;
	}

}
