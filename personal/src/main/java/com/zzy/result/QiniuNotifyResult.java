package com.zzy.result;

import java.util.List;

import com.zzy.pojo.Item;

public class QiniuNotifyResult {

	// id 是 持久化处理的进程 ID，即前文中的<persistentId>。
	// code 是 状态码 0：成功，1：等待处理，2：正在处理，3：处理失败，4：成功但通知失败。
	// desc 是 与状态码相对应的详细描述。
	// inputKey 是 处理源文件的文件名。
	// inputBucket 是 处理源文件所在的空间名。
	// items 是 云处理操作列表，包含每个云处理操作的状态信息。
	// cmd 是 所执行的云处理操作命令 fopN。
	// error 如果处理失败，该字段会给出失败的详细原因。
	// hash 是 云处理结果保存在服务端的唯一 hash 标识。
	// key 是 云处理结果的外链资源名 Key。
	// returnOld 是 默认为 0。当用户执行 saveas 时，如果未加 force 且指定的 bucket：key 存在，则返回
	// 1，告诉用户返回的是旧数据。
	// pipeline 是 云处理操作的处理队列，默认使用队列为共享队列 0.default。
	// reqid 是 云处理请求的请求 id，主要用于七牛技术人员的问题排查。

	private String id;

	private int code;

	private String desc;

	private String inputKey;

	private String inputBucket;

	private List<Item> items;

	private String pipeline;
	private String reqid;

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getInputKey() {
		return inputKey;
	}

	public void setInputKey(String inputKey) {
		this.inputKey = inputKey;
	}

	public String getInputBucket() {
		return inputBucket;
	}

	public void setInputBucket(String inputBucket) {
		this.inputBucket = inputBucket;
	}

	public String getPipeline() {
		return pipeline;
	}

	public void setPipeline(String pipeline) {
		this.pipeline = pipeline;
	}

	public String getReqid() {
		return reqid;
	}

	public void setReqid(String reqid) {
		this.reqid = reqid;
	}
}
