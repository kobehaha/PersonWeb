<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<%@ include file="/WEB-INF/include/taglib.jsp"%>
<%@ include file="/WEB-INF/include/namespace.jsp"%>
<html lang="en">
<!--<![endif]-->
<head>
<title></title>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="favicon.ico">
<!---<link href='http://fonts.googleapis.com/css?family=Lato:300,400,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>--->
<!-- Global CSS -->
<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Plugins CSS -->
<link rel="stylesheet"
	href="assets/plugins/font-awesome/css/font-awesome.css">
<link rel="stylesheet"
	href="assets/plugins/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="assets/plugins/animate-css/animate.min.css">
<!-- Theme CSS -->
<link id="theme-style" rel="stylesheet" href="assets/css/styles.css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="blog-page">
	<div class="wrapper">
		<!-- ******HEADER****** -->
		<%@ include file="/WEB-INF/jsp/head.jsp"%>
		<div class="blog container">

			<h2 class="title">个人博客</h2>
			<div class="row">

				<div id="blog-list"
					class="blog-list section col-md-8 col-sm-8 col-xs-12">
					<c:forEach var="message" items="${result.rows}">
						<article class="post">
							<div class="post-thumb">
								<img class="img-responsive" src="assets/images/posts/post-1.jpg"
									alt="" />
							</div>
							<!--//post-thumb-->
							<div class="content">
								<h3 class="post-title">
									<a href="blog-single.html">${message.post_title}</a>
								</h3>
								<div class="meta">
									<ul class="meta-list list-inline">
										<li class="post-time post_date date updated">${message.post_date }</li>
										<li class="post-author">by <a href="#">Admin</a></li>
										<li class="post-comments-link"><a
											href="blog-single.html#comment-area"><i
												class="fa fa-comments"></i>${message.comment_count} + 评论</a></li>
									</ul>
									<!--//meta-list-->
								</div>
								<!--meta-->
								<div class="post-entry">
									<p>${message.post_content}</p>
									<a class="read-more" href="blog-single.html">查看详情 <i
										class="fa fa-long-arrow-right"></i></a>
								</div>
							</div>
						</article>
						<!--//post-->

								&nbsp;&nbsp;&nbsp;<br />
					</c:forEach>

					<ul class="pagination">
						<li class="disabled"><a href="#">&laquo;</a></li>
						<li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
					<!--//pagination-->
				</div>
				<!--//blog-list-->

				<aside id="blog-sidebar"
					class="blog-sidebar col-md-3 col-sm-4 col-xs-12 col-md-offset-1 col-sm-offset-0 col-xs-offset-0">
					<section class="widget search">
						<h3 class="sr-only title">搜索博客</h3>
						<form class="search-blog-form">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="搜索博客">
							</div>
							<button type="submit" class="btn btn-cta btn-cta-primary">
								<i class="fa fa-search"></i>
							</button>
						</form>
					</section>
					<!--//search-->
					<section class="widget social">
						<h3 class="title">更多</h3>
						<ul class="list-inline">
							<li class="col-md-2 col-sm-4 col-xs-6 xs-break"><a href="#"><img
									class="img-responsive" src="" alt=""></a></li>
							<li class="col-md-2 col-sm-4 col-xs-6 "><a
								href="http://blog.csdn.net/kobelovestuding" alt=""><i
									class="fa fa-rss fa-3x" aria-hidden="true"></i></a></li>
							<li class="col-md-2 col-sm-4 col-xs-6"><a
								href="http://weibo.com/p/1005052922535257?is_all=1" /><i
								class="fa fa-weibo fa-4x" aria-hidden="true"></i></li>
							<li class="col-md-2 col-sm-4 col-xs-6 xs-break"><a
								href="http://github.com/kobehaha"><i
									class="fa fa-github fa-4x" aria-hidden="true"></i></a></li>
							<li class="col-md-2 col-sm-4 col-xs-6 sm-break"><a
								href="http://t.qq.com/kobe_branyt"><i
									class="fa fa-tencent-weibo fa-4x" aria-hidden="false"></i></a></li>

							<li class="col-md-2 col-sm-4 col-xs-6"><a href="#"><img
									class="img-responsive" src="" alt=""></a></li>
						</ul>
					</section>
					<!--//widget-->
					<section class="widget categories">
						<h3 class="title">分类</h3>
						<ul class="list-unstyled">
							<li><a href="#">java</a></li>
							<li><a href="#">云计算</a></li>
							<li><a href="#">服务器</a></li>
							<li><a href="#">网站架构</a></li>
						</ul>
					</section>
					<!--//widget-->
					<section class="widget archives">
						<h3 class="title">Archives</h3>
						<ul class="list-unstyled">
							<li><a href="#">June 2014 <span class="count">(3)</span></a></li>
							<li><a href="#">May 2014 <span class="count">(5)</span></a></li>
							<li><a href="#">April 2014 <span class="count">(4)</span></a></li>
							<li><a href="#">March 2014 <span class="count">(2)</span></a></li>
						</ul>
					</section>
					<!--//widget-->
					<section class="widget recent-posts">
						<h3 class="title">最近发布</h3>
						<ul class="list-unstyled">
							<li><a href="#">Lorem ipsum dolor sit amet</a><br /> <span
								class="date">22 May 2014</span></li>
							<li><a href="#">Vestibulum ante ipsum primis</a><br /> <span
								class="date">16 May 2014</span></li>
							<li><a href="#">Phasellus feugiat arcu eget sem
									tincidunt </a><br /> <span class="date">12 May 2014</span></li>
							<li><a href="#">Pellentesque mattis scelerisque</a><br /> <span
								class="date">27 April 2014</span></li>
							<li><a href="#">Nulla egestas commodo dignissim</a><br /> <span
								class="date">6 April 2014</span></li>
						</ul>
					</section>
					<!--//widget-->
				</aside>
				<!--//blog-side-bar-->
			</div>
			<!--//row-->
		</div>
		<!--//blog-->

		<!-- ******SIGNUP****** -->
		<section id="signup" class="signup has-bg-color">
			<div class="container text-center">
				<h2 class="title">您觉得我还需要扩展哪些方面</h2>
				<p class="summary">请留下您的建议</p>
				<form class="signup-form" method="post" action="#">
					<div class="form-group">
						<label class="sr-only" for="semail2">Your email</label> <input
							type="email" id="semail2" name="semail2" class="form-control"
							placeholder="建议" required>
					</div>
					<button type="submit" class="btn btn-cta btn-cta-primary">提交</button>
				</form>
				<!--//signup-form-->
			</div>
		</section>
		<!--//signup-->

	</div>
	<!--//wrapper-->

	

	<!-- Javascript -->
	<script type="text/javascript"
		src="assets/plugins/jquery-1.12.3.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/bootstrap-hover-dropdown.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/jquery-inview/jquery.inview.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/isMobile/isMobile.min.js"></script>
	<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
	<script type="text/javascript"
		src="assets/plugins/jquery-placeholder/jquery.placeholder.js"></script>
	<script type="text/javascript"
		src="assets/plugins/FitVids/jquery.fitvids.js"></script>
	<script type="text/javascript"
		src="assets/plugins/flexslider/jquery.flexslider-min.js"></script>
	<script type="text/javascript" src="assets/js/main.js"></script>
	<!--[if !IE]>-->
	<script type="text/javascript" src="assets/js/animations.js"></script>
	<!--<![endif]-->
</body>
</html>


