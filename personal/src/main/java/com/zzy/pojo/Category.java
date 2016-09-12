package com.zzy.pojo;

public class Category {
	
	
	private String cat_id;
	
	private String cat_name;
	
	private String cat_description;
	
	private Integer cat_parent;
	
	
	public String getCat_id() {
		return cat_id;
	}

	public void setCat_id(String cat_id) {
		this.cat_id = cat_id;
	}

	public String getCat_name() {
		return cat_name;
	}

	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}

	public String getCat_description() {
		return cat_description;
	}

	public void setCat_description(String cat_description) {
		this.cat_description = cat_description;
	}

	public Integer getCat_parent() {
		return cat_parent;
	}

	public void setCat_parent(Integer cat_parent) {
		this.cat_parent = cat_parent;
	}


}
