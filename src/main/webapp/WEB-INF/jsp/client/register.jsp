<!DOCTYPE html>
<html>
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">

<title>注册</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">

<link rel="shortcut icon" href="/img/favicon.ico">

<link rel="stylesheet" href="/css/grid.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/normalize.css">
<!-- 
<link rel="stylesheet" href="css/bootstrap.min.css" /> 
<link rel="stylesheet" href="css/bootstrapValidator.min.css" />-->

<script src="/js/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="/js/jquery-1.8.3.min.js"><\/script>')
</script>
<script src="/js/html5.js"></script>
<script src="/js/main.js"></script>
<script src="/js/radio.js"></script>
<script src="/js/checkbox.js"></script>
<script src="/js/selectBox.js"></script>
<script src="/js/jquery.carouFredSel-5.2.2-packed.js"></script>
<script src="/js/jquery.jqzoom-core.js"></script>
<script src="/js/jquery.transit.js"></script>
<script src="/js/jquery.easing.1.2.js"></script>
<script src="/js/jquery.anythingslider.js"></script>
<script src="/js/jquery.anythingslider.fx.js"></script>

<script type="text/javascript" src="/js/jquery-1.10.2.min.js"></script> 
<script type="text/javascript" src="/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/bootstrapValidator.min.js"></script>

</head>
<body>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<c:import url="/shop/header" charEncoding="utf-8" />    

	<section id="main" class="page-login">
		<div class="container_12">
			<div id="content" class="grid_12">
				<header>
					<h1 class="page_title">注册</h1>
				</header>

				<article>
					<div class="grid_6 new_customers">
						<h2>新用户</h2>
						<p>通过在我们的商店创建帐户，您将能够更快完成结帐流程，存储多个送货地址，查看和跟踪您帐户中的订单等。</p>
						<div class="clear"></div>
						<a href="login">
							<button class="account">登录</button>
						</a>
					</div>
					<!-- .grid_6 -->

					<div class="grid_6 registed_form">
						<form class="registed" action="/shop/doreg" method="post">
							<h2>注册</h2>
							<!-- <p>若您没有账号，请注册</p> -->
							</p>${registerMsg}</p>
							<div class="text">
								<strong>用户名:</strong><sup>*</sup><br> <input type="text"
									name="userName" class="" value="">
							</div>
							<!-- .userName -->

							<div class="password">
								<strong>密码:</strong><sup>*</sup><br> <input type="password"
									name="userPwd" class="" value="">
							</div>
							<!-- .userPwd -->

							<div class="text">
								<strong>手机号:</strong><sup>*</sup><br> <input type="text"
									name="userPhone" class="" value="">
							</div>
							<!-- .userPhone -->

							<div>
								<strong>邮箱:</strong><sup>*</sup><br> <input type="text"
									name="userEmail" class="" value="">
							</div>
							<!-- .userEmail -->

							<div>
								<strong>性别:</strong>
							</div>
							<div class="clear"></div>
							<div class="grid_2">
								<input class="niceRadio" name="userSex" type="radio" value="男"
									checked> 男
							</div>
							<div class="grid_2">
								<input class="niceRadio" name="userSex" type="radio" value="女">
								女
							</div>
							<!-- .userSex -->

							<div class="submit">
								<input type="submit" value="注册"> <sup>*</sup><span>必填项目</span>
							</div>
							<!-- .submit -->
						</form>
						<!-- .registed -->
					</div>
					<!-- .grid_6 -->
				</article>

				<div class="clear"></div>
			</div>
			<!-- #content -->

			<div class="clear"></div>
		</div>
		<!-- .container_12 -->
	</section>
	<!-- #main -->
	<div class="clear"></div>

	<c:import url="footer.jsp" charEncoding="utf-8" />

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							// Generate a simple captcha
							function randomNumber(min, max) {
								return Math.floor(Math.random()
										* (max - min + 1) + min);
							}
							;
							$('#captchaOperation').html(
									[ randomNumber(1, 100), '+',
											randomNumber(1, 200), '=' ]
											.join(' '));

    $('#defaultForm').bootstrapValidator({
												//        live: 'disabled',
												message : 'This value is not valid',
												feedbackIcons : {
													valid : 'glyphicon glyphicon-ok',
													invalid : 'glyphicon glyphicon-remove',
													validating : 'glyphicon glyphicon-refresh'
												},
												fields : {
													userName : {
														message : '用户名无效',
														validators : {
															notEmpty : {
																message : 'The username is required and cannot be empty'
															},
															stringLength : {
																min : 6,
																max : 30,
																message : 'The username must be more than 6 and less than 30 characters long'
															},
															regexp : {
																regexp : /^[a-zA-Z0-9_\.]+$/,
																message : 'The username can only consist of alphabetical, number, dot and underscore'
															},
															remote : {
																url : 'remote.php',
																message : 'The username is not available'
															},
															different : {
																field : 'password',
																message : 'The username and password cannot be the same as each other'
															}
														}
													},
													/* email : {
														validators : {
															emailAddress : {
																message : 'The input is not a valid email address'
															}
														}
													},
													password : {
														validators : {
															notEmpty : {
																message : 'The password is required and cannot be empty'
															},
															identical : {
																field : 'confirmPassword',
																message : 'The password and its confirm are not the same'
															},
															different : {
																field : 'username',
																message : 'The password cannot be the same as username'
															}
														}
													},
													confirmPassword : {
														validators : {
															notEmpty : {
																message : 'The confirm password is required and cannot be empty'
															},
															identical : {
																field : 'password',
																message : 'The password and its confirm are not the same'
															},
															different : {
																field : 'username',
																message : 'The password cannot be the same as username'
															}
														}
													},
													birthday : {
														validators : {
															date : {
																format : 'YYYY/MM/DD',
																message : 'The birthday is not valid'
															}
														}
													},
													gender : {
														validators : {
															notEmpty : {
																message : 'The gender is required'
															}
														}
													},
													'languages[]' : {
														validators : {
															notEmpty : {
																message : 'Please specify at least one language you can speak'
															}
														}
													},
													'programs[]' : {
														validators : {
															choice : {
																min : 2,
																max : 4,
																message : 'Please choose 2 - 4 programming languages you are good at'
															}
														}
													},
													captcha : {
														validators : {
															callback : {
																message : 'Wrong answer',
																callback : function(
																		value,
																		validator) {
																	var items = $(
																			'#captchaOperation')
																			.html()
																			.split(
																					' '), sum = parseInt(items[0])
																			+ parseInt(items[2]);
																	return value == sum;
																}
															}
														}
													} */
												}
											});

							// Validate the form manually
							$('#validateBtn').click(
									function() {
										$('#defaultForm').bootstrapValidator(
												'validate');
									});

							$('#resetBtn').click(
									function() {
										$('#defaultForm').data(
												'bootstrapValidator')
												.resetForm(true);
									});
						});
	</script>
	
	
</body>
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
</html>
