package com.zzy.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.processing.OperationManager;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;
import com.qiniu.util.StringMap;

/**
 * 
 * @author kobe
 *
 */
public class QiniuUtils {
	
	//http://api.qiniu.com/status/get/prefop?id=z0.57dd36b07823de6548e72bda
	//持久化状态查询

	public static final String ACCESS_KEY = "bWHeGJc6IUwPNX_-uRm0SQ44bGC2BRjGOEaWJoAw";

	public static final String SECRET_KEY = "L4A6QmGtgw9UdCHCCy1kT52dQjOT4aJR_HM1WipY";

	public static final Auth auth = Auth.create(ACCESS_KEY, SECRET_KEY);

	public static OperationManager operater = new OperationManager(auth);

	public static final String bucket = "zzyperson";

	public static final String fops = "odconv/pdf";

	public static final String pipeline = "yourpipelinename";

	static UploadManager uploadManager = new UploadManager();

	public static final String QINIU_PPT_TRANSFER_PDF_NOTIFY_URL = "www.zzypersonal.site/qiNiuCallBack";

	private static final Logger logger = LoggerFactory.getLogger(QiniuUtils.class);

	// 设置callbackUrl以及callbackBody，七牛将文件名和文件大小回调给业务服务器
	public static String getUpToken() {
		return auth.uploadToken(bucket);
	}

	/**
	 * 资源上传服务
	 * 
	 * @param path
	 * @return
	 * @throws Exception
	 */
	public static Response upload(String path) throws Exception {
		try {
			Response res = uploadManager.put(path, null, getUpToken());
			System.out.println(res.bodyString());
			return res;
		} catch (QiniuException e) {
			Response r = e.response;
			System.out.println(r.toString());
			logger.info(e.getMessage(), e);
			try {
				System.out.println(r.bodyString());
			} catch (QiniuException e1) {
				logger.info(e1.getMessage(), e1);
			}
		}
		return null;
	}

	/**
	 * ppt 转换为pdf
	 * 
	 * @param key
	 * @throws QiniuException
	 */
	public static void  ppt_Convert_pdf(String key) throws QiniuException {
		String pfops = fops;
		StringMap params = new StringMap().putWhen("force", 1, true);
		params.put("notifyURL", QINIU_PPT_TRANSFER_PDF_NOTIFY_URL);
		try {
			String persistid = operater.pfop(bucket, key, pfops, params);
			System.out.println(persistid);
		} catch (QiniuException e) {
			// 捕获异常信息
			Response r = e.response;
			// 请求失败时简单状态信息
			System.out.println(r.toString());
			logger.info(e.getMessage(), e);
			try {
				System.out.println(r.bodyString());
			} catch (QiniuException e1) {
				logger.info(e1.getMessage(), e1);
			}
		}
	}

}