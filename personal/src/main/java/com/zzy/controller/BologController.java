package com.zzy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zzy.result.BlogDataResult;
import com.zzy.service.BlogSevice;

@Controller
public class BologController {

	@Autowired
	private BlogSevice blogSevice;

	// http://localhost:8080/personal/Blog/list?page=1&rows=20
	/**
	 * 查询列表
	 */
	@RequestMapping(value = "/Blog/list", method = RequestMethod.GET)
	@ResponseBody
	public BlogDataResult getItemList(@RequestParam(value = "page", required = false) int page,
			@RequestParam(value = "rows", required = true) int rows) {
		BlogDataResult result;
		try {
			result = blogSevice.getAllBlogs(page, rows);
			return result;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

}
