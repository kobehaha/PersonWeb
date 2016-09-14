package com.zzy.result;

import java.util.List;

import com.zzy.pojo.Post;

public class BlogDataResult {
	
	private long total;
	private List<Post> rows;

	public long getTotal() {
		return total;
	}
	public void setTotal(long total) {
		this.total = total;
	}
	public List<Post> getRows() {
		return rows;
	}
	public void setRows(List<Post> rows) {
		this.rows = rows;
	}

	
}
