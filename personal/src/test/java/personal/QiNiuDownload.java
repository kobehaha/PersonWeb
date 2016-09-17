package personal;

import org.junit.Test;

import com.qiniu.util.Auth;

public class QiNiuDownload {

	// 设置好账号的ACCESS_KEY和SECRET_KEY
	String ACCESS_KEY = "bWHeGJc6IUwPNX_-uRm0SQ44bGC2BRjGOEaWJoAw";
	String SECRET_KEY = "L4A6QmGtgw9UdCHCCy1kT52dQjOT4aJR_HM1WipY";
	// 密钥配置
	Auth auth = Auth.create(ACCESS_KEY, SECRET_KEY);
	// 构造私有空间需要生成的下载的链接
	String URL = "http://odmryfnyr.bkt.clouddn.com/Fs1yf5WvCfNSpqMtJvzrZlO4hLdW";

	public void download() {
		// 调用privateDownloadUrl方法生成下载链接,第二个参数可以设置Token的过期时间
		String downloadRUL = auth.privateDownloadUrl(URL, 3600);
		System.out.println(downloadRUL);
	}

	public static void main(String args[]) {
		new QiNiuDownload().download();
	}

}
