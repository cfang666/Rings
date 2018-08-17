<!DOCTYPE html>
<html>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">

    <title>首页</title>
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

    <div id="slider_body">
        <ul id="slider">
            <li>
                <div class="slid_content">
                    <h2 style="color:#6f566f;">钻戒1</h2>
                    <p style="color:#6f566f;">描述<br>
                    描述<br>
                    描述</p>
                    <a class="buy_now" href="#">立即购买</a>
                </div><!-- .slid_content -->
                <img src="/img/content/slid-1.png" alt="Slid 1" title="">
            </li>

            <li>
                <div class="slid_content">
                    <h2 style="color:#744747;">钻戒2</h2>
                    <p style="color:#744747;">描述<br>
                    描述<br>
                    描述</p>
                    <a class="buy_now" href="#">立即购买</a>
                </div><!-- .slid_content -->
                <img src="/img/content/slid-2.png" alt="Slid 2" title="">
            </li>

            <li>
                <div class="slid_content">
                    <h2 style="color:#6d5956;">钻石3</h2>
                    <p style="color:#6d5956;">描述<br>
                    描述<br>
                    描述</p>
                    <a class="buy_now" href="#">立即购买</a>
                </div><!-- .slid_content -->
                <img src="/img/content/slid-3.png" alt="Slid 3" title="">
            </li>
        </ul>
    </div><!-- #slider_body -->

    <div id="home_banners">
        <div class="container_12">
            <div class="grid_6">
                <a href="#" class="banner banner1">购物满 500元 即可<strong>包邮</strong> </a>
            </div><!-- .grid_6 -->

            <div class="grid_6">
                <a href="#" class="banner banner2">疯狂的新系列<strong>超级优惠！</strong></a>
            </div><!-- .grid_6 -->
        </div>
    </div><!-- #home_banners -->

    <section id="main" class="home">
        <div class="container_12">
            <div id="content">
                <div class="grid_12">
                    <h2 class="product-title">特色产品</h2>
                </div><!-- .grid_12 -->

                <div class="clear"></div>

                <div class="products">

					<c:forEach items="${goods }" var="item">
						<article class="grid_3 article">
							<div class="prev">
								<a href="product_page"><img src="/img/images/${item.gsImage }.jpg" alt="Product 8" title=""></a>
							</div>
							<!-- .prev -->

							<h3 class="title"> ${item.gsName }</h3>
							<div class="cart">
								<div class="price">
									<div class="vert">
										¥ ${item.gsPrice }
										<div class="price_old">¥ ${item.gsPrice*1.5 }</div>
									</div>
								</div>
								<a href="#" class="obn"></a> <a href="#" class="like"></a> <a
									href="shopping_cart" class="bay"><img src="/img/bg_cart.png" alt="Buy"
									title=""></a>
							</div>
							<!-- .cart -->

						</article>
						<!-- .grid_3.article -->
					</c:forEach>

					<div class="clear"></div>
                </div><!-- .products -->
                <div class="clear"></div>
            </div><!-- #content -->

            <div class="clear"></div>

            <div id="brands">
                <div class="c_header">
                    <div class="grid_10">
                        <h2>品牌</h2>
                    </div><!-- .grid_10 -->

                    <div class="grid_2">
                        <a id="next_c1" class="next arows" href="#"><span>Next</span></a>
                        <a id="prev_c1" class="prev arows" href="#"><span>Prev</span></a>
                    </div><!-- .grid_2 -->
                </div><!-- .c_header -->

                <div class="brands_list">
                    <ul id="listing">
                        <li>
                            <div class="grid_2">
                                <a href="#"><div><img src="/img/content/liufuzhubao.jpg" alt="Brand 1" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                        <li>
                            <div class="grid_2">
                                <a href="#"><div><img src="/img/content/zhoudafu.jpg" alt="Brand 1" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                        <li>
                            <div class="grid_2">
                                <a href="#"><div><img src="/img/content/jindafu.jpg" alt="Brand 1" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                       <li>
                            <div class="grid_2">
                                <a href="#"><div><img src="/img/content/zhouss.jpg" alt="Brand 2" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                       <li>
                            <div class="grid_2">
                                <a href="#"><div><img src="/img/content/lfx.jpg" alt="Brand 3" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                       <li>
                            <div class="grid_2">
                                <a href="#"><div><img src="/img/content/zhds.jpg" alt="Brand 4" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                       <li>
                            <div class="grid_2">
                                <a href="#"><div><img src="/img/content/mpzhubao.jpg" alt="Brand 5" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                       <li>
                            <div class="grid_2">
                                <a href="#"><div><img src="/img/content/tsl.jpg" alt="Brand 6" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                       <li>
                            <div class="grid_2">
                                <a href="#"><div><img src="/img/content/tfn.png" alt="Brand 7" title=""></div></a>
                            </div><!-- .grid_2 -->
                        </li>
                    </ul><!-- #listing -->
                </div><!-- .brands_list -->
            </div><!-- #brands -->

            <div id="content_bottom">
                <div class="grid_6">
                    <div class="bottom_block about_as">
                        <h3>关于我们</h3>
                        <p>Lorem ipsum, libero et luctus molestie, turpis mi sagittis nisl, a scelerisque leo nulla et lectus pendisse dictum posuere elit, in congue nisl varius lentesque a tellus eget quam varius aliquet.</p>
                        <p>Pellentesque tristique, libero et luctus molestie, turpis a scelerisque leo nulla et lectus pendisse dictum posuere elit. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                        <p>In congue nisl varius quis lentesque a tellus eget quam varius aliquet. Vel lobortis gravida.  Many desktop publishing packages and web page .</p>
                    </div><!-- .about_as -->
                </div><!-- .grid_6 -->

                <div class="grid_6">
                    <div class="bottom_block news">
                        <h3>News</h3>
                        <ul>
                            <li>
                                <time datetime="2012-03-03">3 january 2012</time>
                                <a href="#">Fermentum parturient lacus tristique habitant nullam morbi et odio nibh mus dictum tellus erat.</a>
                            </li>

                            <li>
                                <time datetime="2012-02-03">2 january 2012</time>
                                <a href="#">Cras ac hendrerit dui. Duis lacus ligula, luctus ac tristique eget, posuere id erat. Many desktop publishing packages and web page editors now use.</a>
                            </li>

                            <li>
                                <time datetime="2012-01-03">1 january 2012</time>
                                <a href="#">Lorem ipsum, libero et luctus molestie, turpis mi sagittis nisl, a scelerisque leo nulla et lectus.</a>
                            </li>
                        </ul>
                    </div><!-- .news -->
                </div><!-- .grid_6 -->
                <div class="clear"></div>
            </div><!-- #content_bottom -->
        </div><!-- .container_12 -->
    </section><!-- #main.home -->

    <c:import url="footer.jsp" charEncoding="utf-8" /> 
    
</body>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
</html>
