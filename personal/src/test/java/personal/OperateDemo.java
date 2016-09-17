package personal;

import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.processing.OperationManager;
import com.qiniu.util.Auth;
import com.qiniu.util.StringMap;
import com.qiniu.util.UrlSafeBase64;

public class OperateDemo {

	public static void main(String[] args) throws QiniuException {
		// 设置账号的AK,SK
		String ACCESS_KEY = "bWHeGJc6IUwPNX_-uRm0SQ44bGC2BRjGOEaWJoAw";
		String SECRET_KEY = "L4A6QmGtgw9UdCHCCy1kT52dQjOT4aJR_HM1WipY";
		Auth auth = Auth.create(ACCESS_KEY, SECRET_KEY);
		// 新建一个OperationManager对象
		OperationManager operater = new OperationManager(auth);
		// 设置要转码的空间和key，并且这个key在你空间中存在
		String bucket = "zzyperson";
		String key = "FgI7i7IAPQe-5Lym5ppHvgayC3lR";
		// 设置转码操作参数
		String fops = "odconv/pdf";
		// 设置转码的队列
		String pipeline = "yourpipelinename";
		// 可以对转码后的文件使用saveas参数自定义命名，当然也可以不指定，文件会默认命名并保存在当前空间
		// String urlbase64 =
		// UrlSafeBase64.encodeToString("firstConvert:firstKieyaaa");
		String pfops = fops;
		// 设置pipeline参数
		StringMap params = new StringMap().putWhen("force", 1, true);
		// .putNotEmpty("pipeline", pipeline);

		params.put("notifyURL", "www.zzypersonal.site/qiNiuCallBack");
		try {
			String persistid = operater.pfop(bucket, key, pfops, params);
			// 打印返回的persistid
			System.out.println(persistid);
		} catch (QiniuException e) {
			// 捕获异常信息
			Response r = e.response;
			// 请求失败时简单状态信息
			System.out.println(r.toString());
			try {
				// 响应的文本信息
				System.out.println(r.bodyString());
			} catch (QiniuException e1) {
				// ignore
			}
		}
	}
}