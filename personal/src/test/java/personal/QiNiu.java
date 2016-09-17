package personal;

import java.io.IOException;

import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;

public class QiNiu {

	// 设置好账号的ACCESS_KEY和SECRET_KEY
	String ACCESS_KEY = "bWHeGJc6IUwPNX_-uRm0SQ44bGC2BRjGOEaWJoAw";
	String SECRET_KEY = "L4A6QmGtgw9UdCHCCy1kT52dQjOT4aJR_HM1WipY";
	// 要上传的空间
	String bucketname = "zzyperson";
	// 上传到七牛后保存的文件名
	String key = "my-java.png";
	// 上传文件的路径
	String FilePath = "/Users/kobe/Desktop/686307650ADDE0C70DC04E60C72DF34E.jpg";

	// 密钥配置
	Auth auth = Auth.create(ACCESS_KEY, SECRET_KEY);
	// 创建上传对象
	UploadManager uploadManager = new UploadManager();

	// 设置callbackUrl以及callbackBody，七牛将文件名和文件大小回调给业务服务器
	public String getUpToken() {
		return auth.uploadToken(bucketname);
	}

	public void upload() throws IOException {
		try {
			// 调用put方法上传
			Response res = uploadManager.put(FilePath, null, getUpToken());
			// 打印返回的信息
			System.out.println(res.bodyString());
		} catch (QiniuException e) {
			Response r = e.response;
			// 请求失败时打印的异常信息
			System.out.println(r.toString());
			try {
				// 响应的文本信息
				System.out.println(r.bodyString());
			} catch (QiniuException e1) {
				// ignore
			}
		}
	}

	public static void main(String args[]) throws IOException {
		new QiNiu().upload();
	}

}
