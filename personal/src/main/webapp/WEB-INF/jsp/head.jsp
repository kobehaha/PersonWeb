<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header id="header" class="header">
	<div class="container">
		<h1 class="logo pull-left">
			<a href="${pageContext.request.contextPath}"> <span
				class="logo-title" style="color: #6dbd63">personalWeb</span>
			</a>
		</h1>
		<!--//logo-->
		<nav id="main-nav" class="main-nav navbar-right" role="navigation">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target="#navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!--//nav-toggle-->
			</div>
			<!--//navbar-header-->
			<div class="navbar-collapse collapse" id="navbar-collapse">
				<ul class="nav navbar-nav mynav">
					<li id="index" class="active nav-item"><a
						href="${pageContext.request.contextPath}">个人介绍</a></li>
					<li id="tour" class="nav-item"><a
						href="${pageContext.request.contextPath}/tour">旅行</a></li>
					<li class="nav-item"><a
						href="${pageContext.request.contextPath}/pricing">近期目标</a></li>
					<li id="blog" class="nav-item dropdown"><a
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-delay="0" data-close-others="false"
						href="blog.html">个人博客<i class="fa fa-angle-down"></i></a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/writeBlog">写博客</a></li>
							<li><a href="${pageContext.request.contextPath}/blog">所有博客</a></li>
							<li><a href="" data-toggle="modal"
								data-target="#category-modal">分类管理</a></li>
							<li><a href="email-templates/tempo-email-color-1.html">开发中</a></li>
						</ul></li>
					<li id="contact" class="nav-item"><a
						href="${pageContext.request.contextPath}/contact">个人简历</a></li>
					<li class="nav-item"><button type="button"
							class="login-trigger btn btn-link" data-toggle="modal"
							data-target="#login-modal">登录</button></li>
					<li id="blog" class="nav-item dropdown"><a
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-delay="0" data-close-others="false"
						href="">更多<i class="fa fa-angle-down"></i></a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/qiniu">qiniu</a></li>
						</ul></li>
				</ul>
				<!--//nav-->
			</div>
			<!--//navabr-collapse-->
		</nav>
		<!--//main-nav-->
	</div>
	<!--//container-->
</header>
<!--//header-->

<script src="assets/plugins/jquery-1.12.3.min.js"></script>
<script src="assets/js/head.js"></script>