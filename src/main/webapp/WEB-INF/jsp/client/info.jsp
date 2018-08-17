<!DOCTYPE html>
<html>
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">

<title>个人信息</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">

<link rel="shortcut icon" href="/img/favicon.ico">

<link rel="stylesheet" href="/css/grid.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/normalize.css">

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
</head>
<body>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
           
	<c:import url="/shop/header" charEncoding="utf-8" />    

	<div class="breadcrumbs">
		<div class="container_12">
			<div class="grid_12">
				<a href="index">首页</a><span></span><a href="#">类别</a><span></span><span
					class="current">此页</span>
			</div>
			<!-- .grid_12 -->
		</div>
		<!-- .container_12 -->
	</div>
	<!-- .breadcrumbs -->

	<!-- <section id="main"> -->
	<br>
	<div class="container_12">
		<div id="content" class="grid_12">
			<div class="grid_12">
				<div id="wrapper_tab" class="tab1">
					<a href="#" class="tab1 tab_link">个人资料</a> <a href="#"
						class="tab2 tab_link">收货地址</a> <a href="#" class="tab3 tab_link">自定义标签</a>

					<div class="clear"></div>

					<div class="tab1 tab_body">
					
				    ${updateMsg }
						<div class="grid_6 registed_form">
							<form class="registed" action="/shop/doupdate" method="post">
								<input type="hidden" name="userID" value="${user.userID }">
								<div class="text">
									<strong>用户名:</strong><br> <input type="text" name="userName"
										class="" value="${user.userName }">
								</div>
								<!-- .userName -->

								<div class="password">
									<strong>密码:</strong><br> <input type="text" name="userPwd"
										class="" value="${user.userPwd }">
								</div>
								<!-- .userPwd -->

								<div class="text">
									<strong>手机号:</strong><br> <input type="text" name="userPhone"
										class="" value="${user.userPhone }">
								</div>
								<!-- .userPhone -->

								<div class="email">
									<strong> 邮箱:</strong><br> <input type="email" name="userEmail"
										class="" value="${user.userEmail }">
								</div>
								<!-- .userEmail -->

								<div>
									<strong>性别:</strong>
								</div>
								<div class="clear"></div>
								<div class="grid_2">
									<input class="niceRadio" type="radio" name="userSex" <c:if test="${user.userSex==男}">checked </c:if>> 男
								</div>
								<div class="grid_2">
									<input class="niceRadio" type="radio" name="userSex" <c:if test="${user.userSex==女}">checked </c:if>> 女
								</div>

								<!-- .userSex -->

								<div class="submit">
									<input type="submit" value="修改">
								</div>
								<!-- .submit -->
							</form>
							<!-- .registed -->
						</div>
						<!-- .grid_6 -->
						<div class="clear"></div>
					</div>
					<!-- .tab1 .tab_body -->

					<div class="tab2 tab_body">
						<table>
							<tr class="bg">
								<th>First Column</th>
								<th>Second Column</th>
								<th>Third Column</th>
								<th>Fourth Column</th>
							</tr>
							<tr>
								<td>One</td>
								<td>no</td>
								<td>yes</td>
								<td>yes, all</td>
							</tr>
							<tr class="bg">
								<td>Two</td>
								<td>0</td>
								<td>1</td>
								<td>all</td>
							</tr>
							<tr>
								<td>Three</td>
								<td>$399</td>
								<td>$599</td>
								<td>$799</td>
							</tr>
							<tr class="bg">
								<td>Four</td>
								<td><a href="#">Call action</a></td>
								<td><a href="#">Call action</a></td>
								<td><a href="#">Call action</a></td>
							</tr>
						</table>
						<!-- .add_comments -->
						<div class="clear"></div>
					</div>
					<!-- .tab2 .tab_body -->

					<div class="tab3 tab_body">
						<h4>Custom Tab</h4>
						<div class="clear"></div>
					</div>
					<!-- .tab3 .tab_body -->
					<div class="clear"></div>
				</div>
				​
				<!-- #wrapper_tab -->
				<div class="clear"></div>
			</div>
			<!-- .grid_12 -->

			<!-- .product_page -->

			<div class="related grid_12">

				<div class="c_header">
					<div class="grid_10">
						<h2>相关产品推荐</h2>
					</div>
					<!-- .grid_10 -->

					<div class="grid_2">
						<a id="next_c1" class="next arows" href="#"><span>Next</span></a>
						<a id="prev_c1" class="prev arows" href="#"><span>Prev</span></a>
					</div>
					<!-- .grid_2 -->
				</div>
				<!-- .c_header -->

				<div class="related_list">
					<ul id="listing" class="products">
						<li>
							<article class="grid_3 article">
								<img class="sale" src="/img/sale.png" alt="Sale">
								<div class="prev">
									<a href="product_page"><img src="/img/content/product1.png"
										alt="Product 1" title=""></a>
								</div>
								<!-- .prev -->

								<h3 class="title">
									handmade Emerald Cut<br> Emerald Ring
								</h3>
								<div class="cart">
									<div class="price">
										<div class="vert">
											$550.00
											<div class="price_old">$725.00</div>
										</div>
									</div>
									<a href="#" class="obn"></a> <a href="#" class="like"></a> <a
										href="#" class="bay"><img src="/img/bg_cart.png" alt="Buy"
										title=""></a>
								</div>
								<!-- .cart -->
							</article> <!-- .grid_3.article -->
						</li>

						<li>
							<article class="grid_3 article">
								<div class="prev">
									<a href="product_page"><img src="/img/content/product2.png"
										alt="Product 2" title=""></a>
								</div>
								<!-- .prev -->

								<h3 class="title">beautiful Valentine And Engagement</h3>
								<div class="cart">
									<div class="price">
										<div class="vert">
											$550.00
											<div class="price_old">$725.00</div>
										</div>
									</div>
									<a href="#" class="obn"></a> <a href="#" class="like"></a> <a
										href="#" class="bay"><img src="/img/bg_cart.png" alt="Buy"
										title=""></a>
								</div>
								<!-- .cart -->
							</article> <!-- .grid_3.article -->
						</li>

						<li>
							<article class="grid_3 article">
								<img class="sale" src="/img/new.png" alt="New">
								<div class="prev">
									<a href="product_page"><img src="/img/content/product3.png"
										alt="Product 3" title=""></a>
								</div>
								<!-- .prev -->

								<h3 class="title">Emerald Cut Emerald Ring</h3>
								<div class="cart">
									<div class="price">
										<div class="vert">
											$550.00
											<div class="price_old">$725.00</div>
										</div>
									</div>
									<a href="#" class="obn"></a> <a href="#" class="like"></a> <a
										href="#" class="bay"><img src="/img/bg_cart.png" alt="Buy"
										title=""></a>
								</div>
								<!-- .cart -->
							</article> <!-- .grid_3.article -->
						</li>

						<li>
							<article class="grid_3 article">
								<div class="prev">
									<a href="product_page"><img src="/img/content/product4.png"
										alt="Product 4" title=""></a>
								</div>
								<!-- .prev -->

								<h3 class="title">Diamond Necklaces and Pendants</h3>
								<div class="cart">
									<div class="price">
										<div class="vert">
											$550.00
											<div class="price_old">$725.00</div>
										</div>
									</div>
									<a href="#" class="obn"></a> <a href="#" class="like"></a> <a
										href="#" class="bay"><img src="/img/bg_cart.png" alt="Buy"
										title=""></a>
								</div>
								<!-- .cart -->
							</article> <!-- .grid_3.article -->
						</li>

						<li>
							<article class="grid_3 article">
								<div class="prev">
									<a href="product_page"><img src="/img/content/product5.png"
										alt="Product 5" title=""></a>
								</div>
								<!-- .prev -->

								<h3 class="title">Emerald Diamond Solitaire</h3>
								<div class="cart">
									<div class="price">
										<div class="vert">
											$550.00
											<div class="price_old">$725.00</div>
										</div>
									</div>
									<a href="#" class="obn"></a> <a href="#" class="like"></a> <a
										href="#" class="bay"><img src="/img/bg_cart.png" alt="Buy"
										title=""></a>
								</div>
								<!-- .cart -->
							</article> <!-- .grid_3.article -->
						</li>
					</ul>
					<!-- #listing -->
				</div>
				<!-- .brands_list -->
			</div>
			<!-- .related -->

			<div class="clear"></div>
		</div>
		<!-- #content -->

		<div class="clear"></div>
	</div>
	<!-- .container_12 -->
	<!-- </section> -->
	<!-- #main -->
	<div class="clear"></div>
	<br>
	<br>
	<br>
	<br>

	<c:import url="footer.jsp" charEncoding="utf-8" /> 
    
</body>
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
</html>
