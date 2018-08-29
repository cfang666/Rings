<!DOCTYPE html>
<html>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">
    
    <title>产品页面</title>
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
    
    <div class="breadcrumbs">
        <div class="container_12">
            <div class="grid_12">
                 <a href="index">首页</a><span></span><a href="#">类别</a><span></span><span class="current">此页</span>
            </div><!-- .grid_12 -->
        </div><!-- .container_12 -->
    </div><!-- .breadcrumbs -->
    
    <section id="main">
        <div class="container_12">
            <div id="content" class="grid_12">
                <header>
                    <h1 class="page_title">${product.gsName}</h1>
                </header>
                    
                <article class="product_page">
                    <div class="grid_5 img_slid" id="products">
			<img class="sale" src="/img/sale.png" alt="Sale">
			<div class="preview slides_container">
			    <div class="prev_bg">
				<a href="img/images/${product.gsImage}.jpg" class="jqzoom" rel='gal1' title="">
				    <img src="/img/images/${product.gsImage}.jpg" alt="Product 1" title="">
				</a>
			    </div>
			</div><!-- .preview -->
                        
                        <div class="next_prev">
			    <a id="img_prev" class="arows" href="#"><span>Prev</span></a>
			    <a id="img_next" class="arows" href="#"><span>Next</span></a>
			</div><!-- .next_prev -->

			<ul class="small_img clearfix" id="thumblist">
			    <li><a class="zoomThumbActive" href='javascript:void(0);' rel="{gallery: 'gal1', smallimage: './img/images/${product.gsImage}.jpg',largeimage: './img/images/${product.gsImage}.jpg'}"><img src='img/images/${product.gsImage}.jpg' alt=""></a></li>
			    <li><a href='javascript:void(0);' rel="{gallery: 'gal1', smallimage: './img/images/${product.gsImage}/1.jpg',largeimage: './img/images/${product.gsImage}/1.jpg'}"><img src='img/images/${product.gsImage}/1.jpg' alt=""></a></li>
			    <li><a href='javascript:void(0);' rel="{gallery: 'gal1', smallimage: './img/images/${product.gsImage}/2.jpg',largeimage: './img/images/${product.gsImage}/2.jpg'}"><img src='img/images/${product.gsImage}/2.jpg' alt=""></a></li>
			    <li><a href='javascript:void(0);' rel="{gallery: 'gal1', smallimage: './img/images/${product.gsImage}/3.jpg',largeimage: './img/images/${product.gsImage}/3.jpg'}"><img src='img/images/${product.gsImage}/3.jpg' alt=""></a></li>
			    <li><a href='javascript:void(0);' rel="{gallery: 'gal1', smallimage: './img/images/${product.gsImage}/4.jpg',largeimage: './img/images/${product.gsImage}/4.jpg'}"><img src='img/images/${product.gsImage}/4.jpg' alt=""></a></li>
			</ul><!-- .small_img -->

			<div id="pagination"></div>
		    </div><!-- .grid_5 -->
                    
                    <div class="grid_7">
			<div class="entry_content">
                            <div class="soc">
				<img src="/img/soc.png" alt="Soc">
			    </div><!-- .soc -->
                            
			    <div class="review">
				<a class="plus" href="#"></a>
				<a class="plus" href="#"></a>
				<a class="plus" href="#"></a>
				<a href="#"></a>
				<a href="#"></a>
				<span><strong></strong>3星评价</span>
                                <span class="separator">|</span>
			        <a class="add_review" href="#">添加你的评价</a>
			    </div>
                            
			    <p>描述:<br>${product.gsName}</p>
                            
                            <div class="ava_price">
                                <div class="price">
                                     <div class="price_old">${product.gsPrice*1.5}</div>
                                    ${product.gsPrice}
				</div><!-- .price -->
                                
				<div class="availability_sku">
				    <div class="availability">
					可用性: <span>有现货</span>
				    </div>
				    <div class="sku">
					SKU: <span>Candles OV</span>
				    </div>
				</div><!-- .availability_sku -->
                                <div class="clear"></div>
			    </div><!-- .ava_price -->
                            
                            <div class="parameter_selection">
                                <select >
                                	<option value="kongbai"></option>
                                    <option>${product.gsSize }</option>
                                </select>
                                <select>
                                    <option>选择一种材料</option>
                                    <option>选择一种材料</option>
                                </select>
			    </div><!-- .parameter_selection -->

			    <div class="cart">
                                <a href="#" class="bay"><img src="/img/bg_cart.png" alt="Buy" title="">加入购物车</a>
                                <a href="#" class="like"><img src="/img/like.png" alt="" title=""> 收藏</a>
                                <a href="#" class="obn"><img src="/img/obl.png" alt="" title="">对比</a>
                            </div><!-- .cart -->

			</div><!-- .entry_content -->
		    </div><!-- .grid_7 -->
		    <div class="clear"></div>
                    
                    <div class="grid_12" >
			<div id="wrapper_tab" class="tab1">
			    <a href="#" class="tab1 tab_link">描述</a>
			    <a href="#" class="tab2 tab_link">评价</a>
			    <a href="#" class="tab3 tab_link">自定义标签</a>

			    <div class="clear"></div>

			    <div class="tab1 tab_body">
				<img src="/img/images/${product.gsImage}/intro/1.jpg">
			    <img src="/img/images/${product.gsImage}/intro/2.jpg">
			    <img src="/img/images/${product.gsImage}/intro/3.jpg">
			    <img src="/img/images/${product.gsImage}/intro/4.jpg">
			    <img src="/img/images/${product.gsImage}/intro/5.jpg">
			    
				<div class="clear"></div>
				
			    </div><!-- .tab1 .tab_body -->

			    <div class="tab2 tab_body">
				<h4>顾客评论</h4>
                                
                                <ul class="comments">
				    <li>
					<div class="autor">Mike</div>, <time datetime="2012-11-03">03.11.2012</time>

					<div class="evaluation">
					    <div class="quality">
						<span>质量</span>
						<a class="plus" href="#"></a>
						<a class="plus" href="#"></a>
						<a class="plus" href="#"></a>
						<a href="#"></a>
						<a href="#"></a>
					    </div>
					    <div class="price">
                                                <span>价格</span>
                                                <a class="plus" href="#"></a>
						<a class="plus" href="#"></a>
						<a class="plus" href="#"></a>
						<a class="plus_minus" href="#"></a>
						<a href="#"></a>
					    </div>
					    <div class="clear"></div>
					</div><!-- .evaluation -->

					<p>Suspendisse at placerat turpis. Duis luctus erat vel magna pharetra aliquet. Maecenas tincidunt feugiat ultricies. Phasellus et dui risus. Vestibulum adipiscing, eros quis lobortis dictum.  It enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                    </li>

				    <li>
					<div class="autor">Mike</div>, <time datetime="2012-11-03">01.11.2012</time>

					<div class="evaluation">
					    <div class="quality">
						<span>质量</span>
						<a class="plus" href="#"></a>
						<a class="plus" href="#"></a>
						<a class="plus" href="#"></a>
						<a class="plus" href="#"></a>
						<a class="plus_minus" href="#"></a>
					    </div>
					    <div class="price">
						<span>价格</span>
						<a class="plus" href="#"></a>
						<a class="plus" href="#"></a>
						<a class="plus" href="#"></a>
						<a class="plus" href="#"></a>
						<a href="#"></a>
					    </div>
					    <div class="clear"></div>
					</div><!-- .evaluation -->

					<p>Etiam mollis volutpat odio, id euismod justo gravida a. Aliquam erat volutpat. Phasellus faucibus venenatis lorem, vitae commodo elit pretium et. Duis rhoncus lobortis congue. Vestibulum et purus dui, vel porta lectus. Sed vulputate pulvinar adipiscing. It enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                    </li>
				</ul><!-- .comments -->
                                
                                <form class="add_comments">
				    <h4>写下你的评论</h4>

					<div class="evaluation">
					    <div class="quality">
						质量<sup>*</sup>
						<input class="niceRadio" type="radio" name="quality" value="1"><span class="eva_num">1</span>
						<input class="niceRadio" type="radio" name="quality" value="2"><span class="eva_num">2</span>
						<input class="niceRadio" type="radio" name="quality" value="3"><span class="eva_num">3</span>
						<input class="niceRadio" type="radio" name="quality" value="4"><span class="eva_num">4</span>
						<input class="niceRadio" type="radio" name="quality" value="5"><span class="eva_num">5</span>
					    </div>
					    <div class="price">
						价格<sup>*</sup>
						<input class="niceRadio" type="radio" name="price" value="1"><span class="eva_num">1</span>
						<input class="niceRadio" type="radio" name="price" value="2"><span class="eva_num">2</span>
						<input class="niceRadio" type="radio" name="price" value="3"><span class="eva_num">3</span>
						<input class="niceRadio" type="radio" name="price" value="4"><span class="eva_num">4</span>
						<input class="niceRadio" type="radio" name="price" value="5"><span class="eva_num">5</span>
					    </div>
					    <div class="clear"></div>
					</div><!-- .evaluation -->

					<div class="text_review">
					    <strong>评论</strong><sup>*</sup><br>
					    <textarea name="text"></textarea><br>
					    <i>Note: HTML is not translated!</i>
					</div><!-- .text_review -->
                                        
                                        <div class="nickname">
					    <strong>昵称</strong><sup>*</sup><br>
					    <input type="text" name="" class="" value="">
					</div><!-- .nickname -->

					<div class="your_review">
					    <strong>您的评论摘要</strong><sup>*</sup><br>
					    <input type="text" name="" class="" value="">
					</div><!-- .your_review -->

					<div class="clear"></div>

					

					<input type="submit" value="提交评论">
				    </form><!-- .add_comments -->
                                <div class="clear"></div>
			    </div><!-- .tab2 .tab_body -->

			    <div class="tab3 tab_body">
				<h4>Custom Tab</h4>
				<div class="clear"></div>
			    </div><!-- .tab3 .tab_body -->
			    <div class="clear"></div>
			</div>​<!-- #wrapper_tab -->
			<div class="clear"></div>
		    </div><!-- .grid_12 -->
                    
		</article><!-- .product_page -->
                
                <div class="related grid_12">
                    
                        <div class="c_header">
                            <div class="grid_10">
                                <h2>相关产品推荐</h2>
                            </div><!-- .grid_10 -->

                            <div class="grid_2">
                                <a id="next_c1" class="next arows" href="#"><span>Next</span></a>
                                <a id="prev_c1" class="prev arows" href="#"><span>Prev</span></a>
                            </div><!-- .grid_2 -->
                        </div><!-- .c_header -->

                        <div class="related_list">
                            <ul id="listing" class="products">
                                <li>
                                    <article class="grid_3 article">
                                        <img class="sale" src="/img/sale.png" alt="Sale">
                                        <div class="prev">
                                            <a href="product_page"><img src="/img/images/9.jpg" alt="Product 1" title=""></a>
                                        </div><!-- .prev -->
                        
                                        <h3 class="title">handmade Emerald Cut<br> Emerald Ring</h3>
                                        <div class="cart">
                                            <div class="price">
                                                <div class="vert">
                                                    $550.00
                                                    <div class="price_old">$725.00</div>
                                                </div>
                                            </div>
                                            <a href="#" class="obn"></a>
                                            <a href="#" class="like"></a>
                                            <a href="#" class="bay"><img src="/img/bg_cart.png" alt="Buy" title=""></a>
                                        </div><!-- .cart -->
                                    </article><!-- .grid_3.article -->
                                </li>
                                
                                <li>
                                    <article class="grid_3 article">
                                        <div class="prev">
                                             <a href="product_page"><img src="/img/images/10.jpg" alt="Product 2" title=""></a>
                                        </div><!-- .prev -->
                        
                                        <h3 class="title">beautiful Valentine And Engagement</h3>
                                        <div class="cart">
                                            <div class="price">
                                                <div class="vert">
                                                    $550.00
                                                    <div class="price_old">$725.00</div>
                                                </div>
                                            </div>
                                            <a href="#" class="obn"></a>
                                            <a href="#" class="like"></a>
                                            <a href="#" class="bay"><img src="/img/bg_cart.png" alt="Buy" title=""></a>
                                        </div><!-- .cart -->
                                    </article><!-- .grid_3.article -->
                                </li>
                                
                                <li>
                                    <article class="grid_3 article">
                                        <img class="sale" src="/img/new.png" alt="New">
                                        <div class="prev">
                                            <a href="product_page"><img src="/img/images/18.jpg" alt="Product 3" title=""></a>
                                        </div><!-- .prev -->
                        
                                        <h3 class="title">Emerald Cut Emerald Ring</h3>
                                        <div class="cart">
                                            <div class="price">
                                                <div class="vert">
                                                    $550.00
                                                    <div class="price_old">$725.00</div>
                                                </div>
                                            </div>
                                            <a href="#" class="obn"></a>
                                            <a href="#" class="like"></a>
                                            <a href="#" class="bay"><img src="/img/bg_cart.png" alt="Buy" title=""></a>
                                        </div><!-- .cart -->
                                    </article><!-- .grid_3.article -->
                                </li>
                                
                                <li>
                                    <article class="grid_3 article">
                                        <div class="prev">
                                            <a href="product_page"><img src="/img/images/29.jpg" alt="Product 4" title=""></a>
                                        </div><!-- .prev -->
                        
                                        <h3 class="title">Diamond Necklaces and Pendants</h3>
                                        <div class="cart">
                                            <div class="price">
                                                <div class="vert">
                                                    $550.00
                                                    <div class="price_old">$725.00</div>
                                                </div>
                                            </div>
                                            <a href="#" class="obn"></a>
                                            <a href="#" class="like"></a>
                                            <a href="#" class="bay"><img src="/img/bg_cart.png" alt="Buy" title=""></a>
                                        </div><!-- .cart -->
                                    </article><!-- .grid_3.article -->
                                </li>
                    
                                <li>
                                    <article class="grid_3 article">
                                        <div class="prev">
                                            <a href="product_page"><img src="/img/images/6.jpg" alt="Product 5" title=""></a>
                                        </div><!-- .prev -->
                        
                                        <h3 class="title">Emerald Diamond Solitaire</h3>
                                        <div class="cart">
                                            <div class="price">
                                                <div class="vert">
                                                    $550.00
                                                    <div class="price_old">$725.00</div>
                                                </div>
                                            </div>
                                            <a href="#" class="obn"></a>
                                            <a href="#" class="like"></a>
                                            <a href="#" class="bay"><img src="/img/bg_cart.png" alt="Buy" title=""></a>
                                        </div><!-- .cart -->
                                    </article><!-- .grid_3.article -->
                                </li>
                            </ul><!-- #listing -->
                         </div><!-- .brands_list -->
                </div><!-- .related -->
                    
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
