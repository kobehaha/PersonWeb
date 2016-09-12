<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/include/taglib.jsp"%>
<%@ include file="/WEB-INF/include/namespace.jsp"%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
<title>Home</title>
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
<link rel="stylesheet" href="assets/plugins/flexslider/flexslider.css">
<!-- Theme CSS -->
<link id="theme-style" rel="stylesheet" href="assets/css/styles.css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="home-page">

	<!-- * Facebook Like button script starts -->
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "/connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<!-- * Facebook Like button script ends -->

	<div class="wrapper">
		<!-- header -->
		<%@ include file="/WEB-INF/jsp/head.jsp"%>
		<!--//header-->

		<!-- ******PROMO****** -->
		<section id="promo" class="promo section">
			<div class="container intro">
				<h2 class="title">
					千里之行始于足下<br />希望大家一起,勤奋并且,乐于享受生活
				</h2>
				<p class="summary">没什么不可能的，加油</p>

			</div>
			<!--//intro-->

			<div class="fixed-container">
				<div class="signup">
					<div class="container text-center">
						<h3 class="title">想和我做朋友</h3>
						<p class="summary">那就留下你的邮箱</p>
						<form class="signup-form">
							<div class="form-group">
								<label class="sr-only" for="semail1">Your email</label> <input
									type="email" id="semail1" name="semail1" class="form-control"
									placeholder="邮箱">
							</div>
							<button type="submit" class="btn btn-cta btn-cta-primary">提交</button>
						</form>
						<!--//signup-form-->
					</div>
					<!--//contianer-->
				</div>
				<!--//signup-->
				<div class="social text-center">
					<div class="container">
						<span class="line title">我的关联 </span>

						<!--//twitter tweet button code starts -->
						<!-- <div class="twitter-tweet">
                            <a href="https://twitter.com/share" class="twitter-share-button" data-via="3rdwave_media" data-hashtags="bootstrap">Tweet</a><script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
                        </div>
                        <!--//twitter tweet button code ends -->

						<!--//facebook like button code starts-->
						<div class="fb-like" data-href="tempo/" data-layout="button_count"
							data-action="like" data-show-faces="false" data-share="true"></div>
						<!--//facebook like button code ends-->
					</div>
				</div>
				<!--//social-->
			</div>
			<div class="bg-slider-wrapper">
				<div id="bg-slider" class="flexslider bg-slider">
					<ul class="slides">
						<li class="slide slide-1"></li>
						<li class="slide slide-2"></li>
						<li class="slide slide-3"></li>
					</ul>
				</div>
			</div>
			<!--//bg-slider-wrapper-->
		</section>
		<!--//promo-->

		<!-- ******PRESS****** -->
		<div class="press">
			<div class="container text-center">
				<div class="row">
					<ul class="list-unstyled">
						<li class="col-md-2 col-sm-4 col-xs-6 xs-break"><a href="#"><img
								class="img-responsive" src="" alt=""></a></li>
						<li class="col-md-2 col-sm-4 col-xs-6 "><a
							href="http://blog.csdn.net/kobelovestuding" alt=""><i
								class="fa fa-rss fa-4x" aria-hidden="true"></i></a></li>
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
				</div>
			</div>
		</div>
		<!--//press-->

		<!-- ******WHY****** -->
		<section id="why" class="why section">
			<div class="container">
				<h2 class="title text-center">个人信息与评价</h2>
				<p class="intro text-center">热爱生活 热爱编程 热爱运动 热爱旅行</p>
				<div class="row">
					<div class="benefits col-md-7 col-sm-6 col-xs-12">

						<div class="item clearfix">
							<div class="icon col-md-3 col-xs-12 text-center">
								<span class="pe-icon pe-7s-rocket"></span>
							</div>
							<!--//icon-->
							<div class="content col-md-9 col-xs-12">
								<h3 class="title">百味的生活</h3>
								<p class="desc">
									生活对我来说就是一杯苦酒，开始很苦，可是慢慢的品尝，时间过得越久，生活也就越有趣 <a target="_blank">一起加油</a>
									生活没有不可能的,相信自己，生活没有困难的，他给了你磨难的同时，也会给你坚强的意志
								</p>
							</div>
							<!--//content-->
						</div>
						<!--//item-->
						<div class="item clearfix">
							<div class="icon col-md-3  col-xs-12 text-center">
								<span class="pe-icon pe-7s-piggy"></span>
							</div>
							<!--//icon-->
							<div class="content col-md-9 col-xs-12">
								<h3 class="title">Coding的乐趣</h3>
								<p class="desc">
									用最美得语法写出最美的程序 <a href="" target="_blank">Thinking in
										Coding，</a>程序是我们和计算机之间的一种交流,用好这种交流的语言会让你觉得Coding也是一种乐趣
								</p>
							</div>
							<!--//content-->
						</div>
						<!--//item-->
						<div class="item clearfix">
							<div class="icon col-md-3  col-xs-12 text-center">
								<span class="pe-icon pe-7s-users"></span>
							</div>
							<!--//icon-->
							<div class="content col-md-9 col-xs-12">
								<h3 class="title">运动人生</h3>
								<p class="desc">
									运动是活力的来源，只有每天保持运动，才能做好自己，做好事情 <a href="" target="_blank">篮球
										科比</a> 他一直指导着我,一个有最娴熟技术的人,同时也是最努力的一个。运动疲惫自己的同时,也放松了自己
								</p>
							</div>
							<!--//content-->
						</div>
						<!--//item-->
						<div class="item clearfix">
							<div class="icon col-md-3  col-xs-12 text-center">
								<span class="pe-icon pe-7s-bicycle"></span>
							</div>
							<!--//icon-->
							<div class="content col-md-9 col-xs-12">
								<h3 class="title">旅行的意义</h3>
								<p class="desc">
									只有一个人在旅行时，才听得到自己的声音。它会告诉你，这世界比想象中的宽阔。你的人生不会没有出口，你会发现自己有一双翅膀，不必经过任何人同意就能飞！<a
										href="h" target="_blank">云南,北京,贵州,四川..</a>只有看的东西多了，你才会得到成长
								</p>
							</div>
							<!--//content-->
						</div>
						<!--//item-->
						<div class="item last clearfix">
							<div class="icon col-md-3  col-xs-12 text-center">
								<span class="pe-icon pe-7s-joy"></span>
							</div>
							<!--//icon-->
							<div class="content col-md-9 col-xs-12">
								<h3 class="title">小小的梦想</h3>
								<p class="desc">
									梦想”是一个多么“虚无缥缈不切实际”的词啊。在很多人的眼里，梦想只是白日做梦，可是，如果你不曾真切的拥有过梦想，你就不会理解梦想的珍贵
									<a href="" target="_blank">永远不要低估一颗总冠军的心</a>
									这句著名的话来自1996年夺冠的火箭名宿,当然永远也不要低估自己，哪怕梦想再小，也值得去努力
								</p>
							</div>
							<!--//content-->
						</div>
						<!--//item-->
						<div class="clearfix"></div>
						<div class="text-center">
							<a class="btn btn-cta btn-cta-secondary" href="tour.html">个人博客..</a>
						</div>
					</div>
					<div
						class="testimonials col-md-4 col-sm-5 col-md-offset-1 col-sm-offset-1 col-xs-12 col-xs-offset-0">
						<div class="item">
							<div class="quote-box">
								<blockquote class="quote">
									为人谨慎，做事犀利，有想法，爱学习，喜欢挑战一些困难的挑战</blockquote>
								<!--//quote-->
								<p class="details">
									<span class="name">曾海波</span> <span class="title">10年软件开发经验,软件架构师</span>
								</p>
								<i class="fa fa-quote-right"></i>
							</div>
							<!--//quote-box-->
							<div class="people text-center">
								<img class="img-rounded user-pic"
									src="assets/images/people/people-1.png" alt="">
							</div>
							<!--//people-->
						</div>
						<!--//item-->
						<div class="item">
							<div class="quote-box">
								<blockquote class="quote">
									做事效率高，学习能力强，乐于助人，对程序有自己的理解，对系统有自己的想法</blockquote>
								<!--//quote-->
								<p class="details">
									<span class="name">杜司棋</span> <span class="title">小朋友</span>
								</p>
								<i class="fa fa-quote-right"></i>
							</div>
							<!--//quote-box-->
							<div class="people text-center">
								<img class="img-rounded user-pic" src="" alt=""> <i
									class="fa fa-user fa-4x" aria-hidden="true"></i>
							</div>
							<!--//people-->
						</div>
						<!--//item-->
						<div class="item last">
							<div class="quote-box">
								<blockquote class="quote">
									做事效率高，学习能力强，乐于助人，对程序有自己的理解，对系统有自己的想法</blockquote>
								<!--//quote-->
								<p class="details">
									<span class="name">五月天</span> <span class="title">萌萌哒</span>
								</p>
								<i class="fa fa-quote-right"></i>
							</div>
							<!--//quote-box-->
							<div class="people text-center">
								<img class="img-rounded user-pic"
									src="assets/images/people/people-3.png" alt="">
							</div>
							<!--//people-->
						</div>
						<!--//item-->
					</div>
				</div>
				<!--//row-->
			</div>
			<!--//container-->
		</section>
		<!--//why-->

		<!-- ******VIDEO****** -->
		<section id="video" class="video section">
			<div class="container">
				<h2 class="title">我的照片墙</h2>
				<p class="summary">热爱生活,积极向上</p>
				<div class="control text-center">
					<button type="button" id="play-trigger" class="play-trigger"
						data-toggle="modal" data-target="#tour-video">
						<i class="fa fa-play"></i>
					</button>
					<p>Watch Video</p>

					<!-- Video Modal -->
					<div class="modal modal-video" id="tour-video" tabindex="-1"
						role="dialog" aria-labelledby="videoModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 id="videoModalLabel" class="modal-title">Video Tour</h4>
								</div>
								<div class="modal-body">
									<div class="video-container">
										<iframe id="vimeo-video" src="assets/video/video1.mp4"
											width="720" height="405" frameborder="0"
											webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
									</div>
									<!--//video-container-->
								</div>
								<!--//modal-body-->
							</div>
							<!--//modal-content-->
						</div>
						<!--//modal-dialog-->
					</div>
					<!--//modal-->
				</div>
				<!--//control-->
			</div>
		</section>
		<!--//video-->

		<!-- ******FAQ****** -->
		<section id="faq" class="faq section has-bg-color">
			<div class="container">
				<h2 class="title text-center">我的一些观点</h2>
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="panel">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-parent="#accordion" data-toggle="collapse"
										class="panel-toggle" href="#faq1"><i
										class="fa fa-plus-square"></i> It 行业深度重要还是广度？ </a>
								</h4>
							</div>

							<div class="panel-collapse collapse" id="faq1">
								<div class="panel-body"></div>
							</div>
						</div>
						<!--//panel-->

						<div class="panel">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-parent="#accordion" data-toggle="collapse"
										class="panel-toggle" href="#faq2"><i
										class="fa fa-plus-square"></i>我走过中的弯路</a>
								</h4>
							</div>

							<div class="panel-collapse collapse" id="faq2">
								<div class="panel-body"></div>
							</div>
						</div>
						<!--//panel-->

						<div class="panel">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-parent="#accordion" data-toggle="collapse"
										class="panel-toggle" href="#faq3"><i
										class="fa fa-plus-square"></i> 我个人推荐的书 </a>
								</h4>
							</div>

							<div class="panel-collapse collapse" id="faq3">
								<div class="panel-body"></div>
							</div>
						</div>
						<!--//panel-->

						<div class="panel">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-parent="#accordion" data-toggle="collapse"
										class="panel-toggle" href="#faq4"><i
										class="fa fa-plus-square"></i> 关于家人 </a>
								</h4>
							</div>

							<div class="panel-collapse collapse" id="faq4">
								<div class="panel-body"></div>
							</div>
						</div>
						<!--//panel-->
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="panel">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-parent="#accordion" data-toggle="collapse"
										class="panel-toggle" href="#faq5"><i
										class="fa fa-plus-square"></i> 对计算机行业我的认识 </a>
								</h4>
							</div>

							<div class="panel-collapse collapse" id="faq5">
								<div class="panel-body"></div>
							</div>
						</div>
						<!--//panel-->

						<div class="panel">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-parent="#accordion" data-toggle="collapse"
										class="panel-toggle" href="#faq6"><i
										class="fa fa-plus-square"></i> 如何高效率的做事 </a>
								</h4>
							</div>

							<div class="panel-collapse collapse" id="faq6">
								<div class="panel-body"></div>
							</div>
						</div>
						<!--//panel-->

						<!--<div class="more text-center">
                    <h4 class="title">More questions?</h4>
                    <a class="btn btn-cta btn-cta-secondary" href="contact.html">Get in touch</a>
                </div>-->
					</div>
					<!--//container-->
		</section>
		<!--//faq-->

		<!-- ******SIGNUP****** -->
		<section id="signup" class="signup">
			<div class="container text-center">
				<h2 class="title">人生理想</h2>
				<p class="summary">在一个领域有一定能力</p>
				<!-- <form class="signup-form" method="post" action="#">
                    <div class="form-group">
                        <label class="sr-only" for="semail2">Your email</label>
                        <input type="email" id="semail2" name="semail2" class="form-control" placeholder="Enter your email address" required>
                    </div>
                    <button type="submit" class="btn btn-cta btn-cta-primary">SIGN UP</button>
                </form><!--//signup-form-->
			</div>
		</section>
		<!--//signup-->

		<%@ include file="/WEB-INF/jsp/footer.jsp"%>

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

		<!-- Vimeo video API -->
		<script src="http://a.vimeocdn.com/js/froogaloop2.min.js"></script>
		<script type="text/javascript" src="assets/js/vimeo.js"></script>

		<!--[if !IE]>-->
		<script type="text/javascript" src="assets/js/animations.js"></script>
		<!--<![endif]-->
</body>
</html>


