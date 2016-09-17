<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>
<%@ include file="/WEB-INF/include/namespace.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css" />
<!-- Plugins CSS -->
<link rel="stylesheet"
	href="assets/plugins/font-awesome/css/font-awesome.css">
<link rel="stylesheet"
	href="assets/plugins/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="assets/plugins/animate-css/animate.min.css">
<!-- Theme CSS -->
<link id="theme-style" rel="stylesheet" href="assets/css/styles.css">
<script type="text/javascript" src="assets/plugins/jquery-1.12.3.min.js"></script>
<script type="text/javascript"
	src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!--baidu editor-->
<script type="text/javascript" charset="utf-8"
	src="assets/plugins/baiduEditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="assets/plugins/baiduEditor/ueditor.all.min.js">
	
</script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8"
	src="assets/plugins/baiduEditor/lang/zh-cn/zh-cn.js"></script>


<style type="text/css">
div {
	width: 100%;
}
</style>

<style type="text/css">
.well {
	margin-bottom: 0px;
	padding: 20px;
}

.blog-input-title .form-control {
	width: 20%
}

.col-sm-2 {
	width: 8%;
	margin-top: 10px
}

.breadcrumb {
	padding: 8px 15px;
	margin-bottom: 40px;
	list-style: none;
	background-color: #f5f5f5;
	border-radius: 4px;
	margin-top: 40px;
}

.blog {
	padding-top: 60px;
	padding-bottom: 100px;
}
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/head.jsp"%>
	<div class="blog-page container blog">
		<div class="blog-container">
			<div class="blog-head ">
				<h2 class="title">七牛文档存储与文档转换</h2>

			</div>
		</div>
		<div class="blog-info">
			<ol class="breadcrumb">
				<li><a href="#">Home</a></li>
				<li><a href="#">2013</a></li>
				<li class="active">十一月</li>
			</ol>
		</div>
		<div class="blog-input-area">
			<div class="blog-input-title form">
				<br></br>
				<div>
					<h5>
						<lable class="col-sm-2 control-lable">文档上传</lable>
					</h5>
					<form action="${pageContext.request.contextPath}/qiniuUpload/"
						method="post" enctype="multipart/form-data">
						<input type="file" name="file" id="file" />
						<button type="submit" class="default .btn-sm" value="Submit">上传</button>
					</form>

				</div>
			</div>

		</div>

	</div>
	<%@ include file="/WEB-INF/jsp/footer.jsp"%>
</body>
</html>