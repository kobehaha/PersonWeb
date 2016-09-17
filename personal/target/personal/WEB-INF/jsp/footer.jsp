<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- ******FOOTER****** -->

<style type="text/css">
.custom {
	margin-top: 15px;
}

.modal-dialog {
	width: 60%;
	height: 60%
}

.ul-category-modify {
	float: right;
}

.list-category {
	padding: 20px;
}

.btn {
	padding: 0px 0px;
}
</style>
<footer class="footer">
	<div class="footer-content">
		<div class="container">
			<div class="row">
				<div class="footer-col col-md-5 col-sm-7 col-sm-12 about">
					<div class="footer-col-inner">
						<h3 class="title">信息</h3>
						<p>更多了解我的方式</p>
						<p>
							<a class="more" href="#">Learn more <i
								class="fa fa-long-arrow-right"></i></a>
						</p>
					</div>
					<!--//footer-col-inner-->
				</div>
				<!--//foooter-col-->
				<div class="footer-col col-md-3 col-sm-4 col-md-offset-1 links">
					<div class="footer-col-inner">
						<h3 class="title">个人推荐网站</h3>
						<ul class="list-unstyled">
							<li><a href="http://www.oschina.net/"><i
									class="fa fa-caret-right"></i><a>开源中国</a></li>
							<li><a href="http://www.csdn.net/"><i
									class="fa fa-caret-right"></i>CSDN</a></li>
							<li><a href="http://edu.51cto.com/"><i
									class="fa fa-caret-right"></i>51CTO</a></li>
							<li><a href="http://www.imooc.com/"><i
									class="fa fa-caret-right"></i>慕课网</a></li>

						</ul>
					</div>
					<!--//footer-col-inner-->
				</div>
				<!--//foooter-col-->
				<div class="footer-col col-md-3 col-sm-12 contact">
					<div class="footer-col-inner">
						<h3 class="title">更多信息</h3>
						<div class="row">
							<p class="tel col-md-12 col-sm-4">
								<i class="fa fa-phone"></i>13883**3391
							</p>
							<p class="email col-md-12 col-sm-4">
								<i class="fa fa-envelope"></i><a href="#">1149318962@qq.com</a>
							</p>
							<p class="email col-md-12 col-sm-4">
								<i class="fa fa-comment"></i><a href="#">1149318962</a>
							</p>
						</div>
					</div>
					<!--//footer-col-inner-->
				</div>
				<!--//foooter-col-->
			</div>
			<!--//row-->
		</div>
		<!--//container-->
	</div>
	<!--//footer-content-->
	<div class="bottom-bar">
		<div class="container">
			<div class="row">
				<small class="copyright col-md-6 col-sm-6 col-xs-12">Copyright
					&copy; 2016.Company 张志远个人博客 All rights reserved.<a target="_blank"
					href="http://sc.chinaz.com/moban/"></a>
				</small>

			</div>
			<!--//row-->
		</div>
		<!--//container-->
	</div>
	<!--//bottom-bar-->
</footer>
<!--//footer-->


<!-- Login Modal -->
<div class="modal modal-login" id="login-modal" tabindex="-1"
	role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 id="loginModalLabel" class="modal-title text-center">登录账户
					此为私人账户</h4>
			</div>
			<div class="modal-body">
				<div class="social-login text-center">
					<ul class="list-unstyled social-login">

					</ul>
				</div>
				<div class="divider"></div>
				<div class="login-form-container">
					<!--  <form class="login-form" action = "${pageContext.request.contextPath}/user/login" method="post"> -->
					<div class="form-group email">
						<label class="sr-only" for="login-email">账户</label> <input
							name="login-account" type="text"
							class="form-control login-account" placeholder="账户 此为私人账户">
					</div>
					<!--//form-group-->
					<div class="form-group password">
						<label class="sr-only" for="login-password">密码</label> <input
							name="login-password" type="password"
							class="form-control login-password" placeholder="密码">
						<!-- <p class="forgot-password">
                                    <a href="#" id="resetpass-link" data-toggle="modal" data-target="#resetpass-modal">Forgot password?</a>
                                </p>-->
						<div class="alert alert-danger admin-login-alert custom">
							<strong class="admin-login-alert-msg"></strong>
						</div>
					</div>
					<!--//form-group-->
					<button type="submit" id="login-buttong"
						class="btn btn-block btn-cta-primary custom" onclick="login()">登录</button>
					<div class="checkbox remember">
						<label> <input type="checkbox">记住我
						</label>
					</div>
					<!--//checkbox-->
					<!--  </form> -->
				</div>
				<!--//login-form-container-->
			</div>
			<!--//modal-body-->
			<div class="modal-footer">
				<!-- <p>New to Tempo? <a class="signup-link" id="signup-link" href="#">Sign up now</a></p>    -->
			</div>
			<!--//modal-footer-->
		</div>
		<!--//modal-content-->
	</div>
	<!--//modal-dialog-->
</div>
<!--//modal-->

<!-- category Modal -->
<div class="modal modal-category" id="category-modal" tabindex="-1"
	role="dialog" aria-labelledby="categoryModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 id="" class="modal-title text-center">分类管理</h4>
			</div>
			<div class="modal-body">
				<div class="social-category">
					<ul class="list-unstyled social-login">
						<ul class="list-group-item">
							<div class="list-category">
								<label class="title">JVM</label>
								<div class="ul-category-modify">
									<button class="btn btn-default">修改</button>
									<button class="btn btn-default">删除</button>
									<label>文章总数 20</label>
								</div>
							</div>
							<li class="list-group-item"><label>免费windows空间托管</label>
								<div class="ul-category-modify">
									<button class="btn btn-default">修改</button>
									<button class="btn btn-default">删除</button>
									<label>文章总数 20</label>
								</div></li>
							<li class="list-group-item"><label>免费windows空间托管</label>
								<div class="ul-category-modify">
									<button class="btn btn-default">修改</button>
									<button class="btn btn-default">删除</button>
									<label>文章总数 20</label>
								</div></li>
						</ul>
						<ul class="list-group-item">
							<div class="list-category">
								<label class="title">云计算</label>
								<div class="ul-category-modify">
									<button class="btn btn-default">修改</button>
									<button class="btn btn-default">删除</button>
									<label>文章总数 20</label>
								</div>
							</div>

							<li class="list-group-item"><label>免费windows空间托管</label>
								<div class="ul-category-modify">
									<button class="btn btn-default">修改</button>
									<button class="btn btn-default">删除</button>
									<label>文章总数 20</label>
								</div></li>
							<li class="list-group-item">图像数量
								<div class="ul-category-modify">
									<button class="btn btn-default">修改</button>
									<button class="btn btn-default">删除</button>
									<label>文章总数 20</label>
								</div>
							</li>
						</ul>
					</ul>
				</div>
				<div class="divider"></div>

			</div>
			<div class="modal-footer">
				<button id=category-button " class="btn  btn-cta-primary custom"
					onclick="">关闭</button>
			</div>
		</div>
	</div>
</div>
</div>
<!--//modal-->



<!-- *****CONFIGURE STYLE****** 
<div class="config-wrapper">
	<div class="config-wrapper-inner">
		<a id="config-trigger" class="config-trigger" href="#"><i
			class="fa fa-cog"></i></a>
		<div id="config-panel" class="config-panel">
			<h5>Choose Colour</h5>
			<ul id="color-options" class="list-unstyled list-inline">
				<li class="theme-1 active"><a
					data-style="assets/css/styles.css" href="#"></a></li>
				<li class="theme-2"><a data-style="assets/css/styles-2.css"
					href="#"></a></li>
				<li class="theme-3"><a data-style="assets/css/styles-3.css"
					href="#"></a></li>
				<li class="theme-4"><a data-style="assets/css/styles-4.css"
					href="#"></a></li>
				<li class="theme-5"><a data-style="assets/css/styles-5.css"
					href="#"></a></li>
				<li class="theme-6"><a data-style="assets/css/styles-6.css"
					href="#"></a></li>
				<li class="theme-7"><a data-style="assets/css/styles-7.css"
					href="#"></a></li>
				<li class="theme-8"><a data-style="assets/css/styles-8.css"
					href="#"></a></li>
				<li class="theme-9"><a data-style="assets/css/styles-9.css"
					href="#"></a></li>
				<li class="theme-10"><a data-style="assets/css/styles-10.css"
					href="#"></a></li>
			</ul>
			
			<a id="config-close" class="close" href="#"><i
				class="fa fa-times-circle"></i></a>
		</div>
		<!--//configure-panel-->
<!--//config-wrapper-inner
</div> config-wrapper-->

<script src="assets/plugins/jquery-1.12.3.min.js"></script>
<script src="assets/js/footer.js"></script>
