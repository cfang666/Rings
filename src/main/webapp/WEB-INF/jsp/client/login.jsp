<!DOCTYPE html>
<html>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">
    
    <title>登录</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    
    <link rel="shortcut icon" href="/img/favicon.ico">

    <link rel="stylesheet" href="/css/grid.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/normalize.css">

    <script src="/js/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="/js/jquery-1.8.3.min.js"><\/script>')</script>
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
</head>
<body>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
           
	<c:import url="/shop/header" charEncoding="utf-8" />    
    
    <section id="main" class="page-login">
        <div class="container_12">
            <div id="content" class="grid_12">
                <header>
                    <h1 class="page_title">登录</h1>
                </header>
                    
                <article>
                    <div class="grid_6 new_customers">
			<h2>新用户</h2>
			<p>通过在我们的商店创建帐户，您将能够更快完成结帐流程，存储多个送货地址，查看和跟踪您帐户中的订单等。</p>
			<div class="clear"></div>
			<a href="register">
				<button class="account">注册</button>
			</a>
                    </div><!-- .grid_6 -->
		
                    <div class="grid_6 registed_form">
			<form class="registed" action="/shop/dologin" method="post" >
			    <h2>登录</h2>
			    <!-- <p>若您已有账号，请登录</p> -->
			    <p>${loginMsg}</p>
			    <div class="text">
				<strong>用户名:</strong><sup>*</sup><br>
				<input type="text" name="userName" class="" value="${userName }">
			    </div><!-- .userName -->
			    <div class="password">
				<strong>密码:</strong><sup>*</sup><br>
				<input type="password" name="userPwd" class="" value="${userPwd }">
			    </div><!-- .userPwd -->
			    <div class="remember">
				<input class="niceCheck" type="checkbox" checked="checked" name="Remember_password" value="on">
				<input type="hidden" name="Remember_password"/>
				<span class="rem">记住密码</span>
			    </div><!-- .remember -->
			    <div class="submit">										
				<input type="submit" value="登录">
                                <a class="forgot" href="#">忘记密码?</a>
				<sup>*</sup><span>必填项目</span>
			    </div><!-- .submit -->
			</form><!-- .registed -->
                    </div><!-- .grid_6 -->
		</article>
                    
                <div class="clear"></div>
            </div><!-- #content -->

            <div class="clear"></div>
        </div><!-- .container_12 -->
    </section><!-- #main -->
    <div class="clear"></div>
        
    <c:import url="footer.jsp" charEncoding="utf-8" /> 
    
</body>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
</html>
