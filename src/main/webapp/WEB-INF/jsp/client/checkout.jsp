<!DOCTYPE html>
<html>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">
    
    <title>订单确认</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    
    <link rel="shortcut icon" href="img/favicon.ico">

    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/normalize.css">

    <script src="js/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.8.3.min.js"><\/script>')</script>
    <script src="js/html5.js"></script>
    <script src="js/main.js"></script>
    <script src="js/radio.js"></script>
    <script src="js/checkbox.js"></script>
    <script src="js/selectBox.js"></script>
    <script src="js/jquery.carouFredSel-5.2.2-packed.js"></script>
    <script src="js/jquery.jqzoom-core.js"></script>
    <script src="js/jquery.transit.js"></script>
    <script src="js/jquery.easing.1.2.js"></script>
    <script src="js/jquery.anythingslider.js"></script>
    <script src="js/jquery.anythingslider.fx.js"></script>
</head>
<body>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
           
	<c:import url="/shop/header" charEncoding="utf-8" />    
    
    <section id="main">
        <div class="container_12">
            <div id="content" class="grid_12">
                <header>
                    <h1 class="page_title">订单确认</h1>
                </header>
                    
                <article id="checkout_info" class="grid_9">
		    <ul class="checkout_list">
			<li class="active">
			    <div class="list_header"><div class="number">1</div>结账方式</div>
			    <div class="list_body">
				<form class="checkout_or">
				    <h3>作为游客或用户结账</h3>
				    <p>注册之后更为便利:</p>
				    <ul class="radio">
					<li><input class="niceRadio" type="radio" name="register"> 游客结账</li>
					<li><input class="niceRadio" type="radio" name="register"> 用户结账</li>
				    </ul>
				    <p>注册后能节省时间！<br>
				                     用户将获得以下便利:</p>
				    <ul>
					<li>更快更方便的结账</li>
					<li>更方便得查看订单记录和状态</li>
				    </ul>
				    <input type="submit" value="下一步">
				</form>
				<form class="login">
				    <h3>登录</h3>
				    <p>如果您已经拥有我们的账户，请登录.</p>
							
				    <div class="email">
					<strong>电子邮件地址:</strong><sup class="surely">*</sup><br>
					<input type="email" name="" class="" value="">
				    </div><!-- .email -->
							
				    <div class="password">
					<strong>密码:</strong><sup class="surely">*</sup><br>
					<input type="text" name="" class="" value="">
				    </div><!-- .password -->
				
				    <div class="remember">
					<input class="niceCheck" type="checkbox" name="Remember_password">
					<span>记住密码</span>
				    </div><!-- .remember -->
				
				    <div class="submit">										
					<input type="submit" value="登录">
                                        <a class="forgot" href="#">忘记密码?</a>
					<sup>*</sup> <span>必填项目</span>
				    </div><!-- .submit -->
				</form>
				<div class="clear"></div>
			    </div>
			</li>
			<li>
			    <a href="#" class="list_header"><div class="number">2</div>订单信息</a>
			</li>
			<li>
			    <div class="list_header"><div class="number">3</div>送货地址</div>
			</li>
			<li>
			    <div class="list_header"><div class="number">4</div>送货方式</div>
			</li>
			<li>
			    <div class="list_header"><div class="number">5</div>支付信息</div>
			</li>
			<li>
			    <div class="list_header"><div class="number">6</div>订单详情</div>
			</li>
		    </ul>
		</article><!-- #checkout_info -->
                
                <div class="grid_3" id="sidebar_right">
                    <aside id="checkout_progress">
                        <h3>您的结账信息</h3>
                        <ul>
                            <li><a title="Edit" href="#">修改</a>发票地址</li>
                            <li><a title="Edit" href="#">修改</a>送货地址</li>
                            <li><a title="Edit" href="#">修改</a>送货方式</li>
                            <li><a title="Edit" href="#">修改</a>支付方式</li>
                        </ul>
                    </aside>
                </div><!-- #sidebar_right -->
                    
            </div><!-- #content -->

            <div class="clear"></div>
        </div><!-- .container_12 -->
    </section><!-- #main -->
    <div class="clear"></div>
        
    <c:import url="footer.jsp" charEncoding="utf-8" /> 
    
</body>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
</html>
