package com.zzy.util;

public class Constant {

	public static final int SUCCESS_CODE = 0;

	public static final int FAILES_CODE = 1;

	public static final int DEFAULT_PAGE = 1;

	public static final int DEFUALT_ROWS = 10;

	public static final String ACCOUNT_NOT_EXIST = "账户不存在";

	public static final String PASSWORD_NOT_RIGHT = "密码错误";

	/** 云转换处理结果 **/
	/** code 是 状态码 0：成功，1：等待处理，2：正在处理，3：处理失败，4：成功但通知失败 **/
	public static class ConvertStatus {
		public static final int SUCCESS = 0;
		public static final int WATINGHADDING = 1;
		public static final int HADDING = 2;
		public static final int FAILES = 3;
		public static final int SUCCESS_NOT_NOTIFY = 4;
	}

}
