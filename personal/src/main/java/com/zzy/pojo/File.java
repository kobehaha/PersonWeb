package com.zzy.pojo;

import java.util.Date;

public class File {

	private int id;

	private String orginName;

	private Date createTime;

	private Date updateTime;

	private String user;

	private String convertName;

	private Long size;

	private int slides;

	private int status;

	private String keyValue;

	private String convertHashValue;

	private String convertKeyValue;

	private String persistentId;

	public String getPersistentId() {
		return persistentId;
	}

	public void setPersistentId(String persistentId) {
		this.persistentId = persistentId;
	}

	public String getKeyValue() {
		return keyValue;
	}

	public void setKeyValue(String keyValue) {
		this.keyValue = keyValue;
	}

	public String getHashValue() {
		return hashValue;
	}

	public void setHashValue(String hashValue) {
		this.hashValue = hashValue;
	}

	public void setSize(Long size) {
		this.size = size;
	}

	private String hashValue;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOrginName() {
		return orginName;
	}

	public void setOrginName(String orginName) {
		this.orginName = orginName;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(java.util.Date date) {
		this.createTime = date;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getConvertName() {
		return convertName;
	}

	public void setConvertName(String convertName) {
		this.convertName = convertName;
	}

	public Long getSize() {
		return size;
	}

	public void setSize(long l) {
		this.size = l;
	}

	public int getSlides() {
		return slides;
	}

	public void setSlides(int slides) {
		this.slides = slides;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getConvertHashValue() {
		return convertHashValue;
	}

	public void setConvertHashValue(String convertHashValue) {
		this.convertHashValue = convertHashValue;
	}

	public String getConvertKeyValue() {
		return convertKeyValue;
	}

	public void setConvertKeyValue(String convertKeyValue) {
		this.convertKeyValue = convertKeyValue;
	}

}
