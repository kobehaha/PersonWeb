package com.zzy.controller;

import java.io.Console;

import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.zzy.result.BlogDataResult;
import com.zzy.service.BlogSevice;
import com.zzy.util.Constant;

@Controller
public class BologController {

	@Autowired
	private BlogSevice blogSevice;

	// http://localhost:8080/personal/Blog/list?page=1&rows=20
	/**
	 * 查询列表
	 */

	// 如果要用/blog/list 如果静态资源使用 assets/js/... 请求数据就会变为zzy./../blog/asserts ---404
	@RequestMapping(value = "/blog", method = RequestMethod.GET)
	public String getItemList(@RequestParam(value = "page", required = false, defaultValue = "1" ) int page,
			@RequestParam(value = "rows", required = false, defaultValue = "10") int rows, Model model) {
		BlogDataResult result;
		try {
			result = blogSevice.getAllBlogs(page, rows);
			model.addAttribute("result", result);
			System.out.println("model " + result.getRows().size());
			return "blog";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:index";
		}

	}

}
