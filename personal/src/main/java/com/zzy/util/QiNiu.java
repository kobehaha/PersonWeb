package com.zzy.util;

import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;

public class QiNiu {

	public static final String ACCESS_KEY = "bWHeGJc6IUwPNX_-uRm0SQ44bGC2BRjGOEaWJoAw";
	public static final String SECRET_KEY = "L4A6QmGtgw9UdCHCCy1kT52dQjOT4aJR_HM1WipY";

	public static final String bucketname = "zzyperson";

	static Auth auth = Auth.create(ACCESS_KEY, SECRET_KEY);

	static UploadManager uploadManager = new UploadManager();

	// 设置callbackUrl以及callbackBody，七牛将文件名和文件大小回调给业务服务器
	public static String getUpToken() {
		return auth.uploadToken(bucketname);
	}

	/**服务**/
	public static Response upload(String path) throws Exception {
		try {
			Response res = uploadManager.put(path, null, getUpToken());
			System.out.println(res.bodyString());
			return res;
		} catch (QiniuException e) {
			Response r = e.response;
			System.out.println(r.toString());
			try {
				System.out.println(r.bodyString());
			} catch (QiniuException e1) {
			}
		}
		return null;
	}
	
	

}
