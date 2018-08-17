<%@ page language="java" contentType="text/html; charset=UTF-8"
   isELIgnored="false" pageEncoding="UTF-8"%>
   
 <head>
    <meta charset="utf-8">

    <title>header</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <link rel="shortcut icon" href="/favicon.ico">

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
   
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
   
<div id="top">
        <div class="container_12">
            <div class="grid_3">
                <div class="lang">
                    <ul>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                        <li>&nbsp;</li>
                    </ul>
                </div><!-- .lang -->
                
                  <!-- <div class="currency">
                    <ul>
                        
                    </ul>
                </div>.currency -->
            </div><!-- .grid_3 -->
            
            <div class="grid_9">
                <nav>
				<ul>
					<c:if test="${sessionScope.uName==null}">
						<li><a href="login">登录</a></li>
						<li><a href="register">注册</a></li>
					</c:if>
					
					<c:if test="${sessionScope.uName!=null}">
						<li><a href="info">我的账户</a></li>
						<li><a href="shopping_cart">购物车</a></li>
						<li><a href="loginout">注销</a></li>
					</c:if>
				</ul>
			</nav>
            </div><!-- .grid_9 -->
        </div>
    </div><!-- #top -->
    
    <header>
        <div class="container_12">
            <div class="grid_3">
                <hgroup>
                    <h1 id="site_logo" ><a href="index" title=""><img src="/img/logo.png" alt="Online Store Theme Logo"></a></h1>
                    <h2 id="site_description">在线商城</h2>
                </hgroup>
            </div><!-- .grid_3 -->
            
            <div class="grid_9">
          <div class="top_header">
                    <div class="welcome">
                    	<c:if test="${sessionScope.uName==null}">
                    		&nbsp;&nbsp;&nbsp;&nbsp;<h7>欢迎您的光临， 您可以<a href="login" style='color:red'>登录</a> 或 <a href="register" style='color:red'>创建账户</a>.
                    	</c:if>
                        <c:if test="${sessionScope.uName!=null}">
                    		&nbsp;&nbsp;&nbsp;&nbsp;欢迎您：<h7 style='color:red'>${sessionScope.uName}</h7>
                    	</c:if>
                    </div><!-- .welcome -->
                    <ul id="cart_nav">
                        <li>
                            <a class="cart_li" href="shopping_cart">
                                <div class="cart_ico" action="openCart"></div>
                             	   购物车
                              
                            </a>
                            
                            <ul class="cart_cont">
                                <li class="no_border recently">最近添加的商品</li>
                                
                                <c:forEach items="${goods}" var="item">
                                <li>
                                    <a href="product_page" class="prev_cart"><div class="cart_vert"><img src="/img/content/product${item.gsImage}.png" alt="Product 1" title=""></div></a>
                                    <div class="cont_cart">
                                        <h4>${item.gsName}<br>${item.gsModel}</h4>
                                        <div class="price">${item.cartNum}<span>*${item.gsPrice}</span></div>
                                    </div>
                                    <a title="close" class="close" href="#"></a>
                                    <div class="clear"></div>
                                </li>
              				    </c:forEach>
                                    <li class="no_border">
                                    <a href="shopping_cart" class="view_cart">打开购物车</a>
                                    <a href="checkout" class="checkout">确认购买</a>
                                </li>
                             
                            </ul>
                        </li>
                    </ul><!-- .cart_nav -->
                    
                    <form class="search" action="/shop/dosearch" method="post">
                        <input type="submit" class="search_button" value="">
                        <input type="text" name="search" class="search_form" value="" placeholder="搜索">
                    </form><!-- .search -->
                
                </div><!-- .top_header -->
                
                <nav class="primary" >
                    <ul><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li><li>&nbsp;</li>
                        <li class="curent"><a href="index">首页</a></li>
                        <li><a href="catalog_grid?page=1">所有商品</a></li>
                        <li class="parent">
                            <a href="#">商品类别</a>
                            <ul class="sub">
                                <li><a href="catalog_grid?typeID=1&page=1">戒指</a></li>
                                <li><a href="catalog_grid?typeID=2&page=1">项链</a></li>
                                <li><a href="catalog_grid?typeID=3&page=1">耳环</a></li>
                                <li><a href="catalog_grid?typeID=4&page=1">手链</a></li>
                            </ul>
                        </li>
                        <li class="parent">
                            <a href="#">所有页面</a>
                            <ul class="sub">
                                <li><a href="index">首页</a></li>
                                <li><a href="catalog_grid?page=1">网格目录</a></li>
                                <li><a href="catalog_list?page=1">列表目录</a></li>
                                <li><a href="product_page">产品页面</a></li>
                                <li><a href="shopping_cart">购物车</a></li>
                                <li><a href="checkout">订单确认</a></li>
                                <li><a href="compare">商品对比</a></li>
                                <li><a href="login">登录</a></li>
                                <li><a href="contact_us">联系我们</a></li>
                                <li><a href="404">404</a></li>
                                <li><a href="blog">博客发送</a></li>
                                <li><a href="blog_post">博客页面</a></li>
                                <li><a href="info">个人信息</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav><!-- .primary -->
            </div><!-- .grid_9 -->
        </div>
    </header>