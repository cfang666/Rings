<!DOCTYPE html>
<html>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">
    
    <title>商品列表目录</title>
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
                 <a href="index">首页</a><span></span><a href="#">类别</a><span></span><span class="current">当前页</span>
            </div><!-- .grid_12 -->
        </div><!-- .container_12 -->
    </div><!-- .breadcrumbs -->
    
    <section id="main">
        <div class="container_12">
            <div id="content" class="grid_9">
                <h1 class="page_title">商品列表</h1>
                 
                <div class="options">
                    <div class="show">
			展示
			<select>
			    <option>1</option>
			    <option>2</option>
			    <option>3</option>
			    <option>4</option>
			    <option>5</option>
			    <option>6</option>
			    <option>7</option>
			    <option>8</option>
			    <option>9</option>
			    <option>10</option>
			    <option>11</option>
			    <option>12</option>
			</select>
			    
			每页
		    </div><!-- .show -->
                    
                    <div class="sort">
			排序按
			<select>
			    <option>价格</option>
			    <option>评分</option>
			    <option>名称</option>
			</select>
			    
			<a class="sort_up" href="#">&#8593;</a>
		    </div><!-- .sort -->
                    
		    <div class="grid-list">
			<a class="grid" href="catalog_grid?typeID=${param.typeID}&page=1"><span></span></a>
			<a class="list current" href="#"><span></span></a>
		    </div><!-- .grid-list -->
		    
                </div><!-- .options -->
                <div class="clear"></div>

				<div class="products_list catalog">
					<c:forEach items="${pagegoods }" var="item">
					<article>
						<div class="grid_3">
							<div class="prev">
								<a href="product_page"><img src="/img/images/${item.gsImage}.jpg"
									alt="Product 10" title=""></a>
							</div>
							<!-- .prev -->
						</div>
						<!-- .grid_3 -->

						<div class="grid_6">
							<div class="entry_content">
								<a href="product_page"><h3 class="title">${item.gsName }</h3></a>
								<p>
									Duis mollis, augue rutrum viverra pellentesque, odio lacus
									feugiat neque, eget pulvinar enim dui vitae enim. Suspendisse
									adipiscing sollicitudin scelerisque. <a class="more"
										href="product_page">Learn more</a>
								</p>
							</div>
							<!-- .entry_content -->

							<%-- <div class="price">
								<div class="price_old">¥ ${item.gsPrice*1.5 }</div>
								<div class="price_old">¥ ${item.gsPrice*1.5 }</div>
								¥ ${item.gsPrice }
							</div> --%>
							<div class="price">
									<!-- <div class="vert"> -->
										¥ ${item.gsPrice }
										<div class="price_old">old price :¥ ${item.gsPrice*1.5 }</div>
									<!-- </div> -->
							</div>
							<div class="review">
								<a class="plus" href="#"></a> <a class="plus" href="#"></a> <a
									class="plus" href="#"></a> <a href="#"></a> <a href="#"></a> <span><strong>3</strong>
									评价</span>
							</div>

							<div class="cart">
								<a href="shopping_cart" class="bay"><img src="/img/bg_cart.png" alt="Buy"
									title="">加入购物车</a> <a href="#" class="like"><img
									src="/img/like.png" alt="" title=""> 加入收藏夹</a> <a href="#"
									class="obn"><img src="/img/obl.png" alt="" title="">加入比较</a>
							</div>
							<!-- .cart -->
						</div>
						<!-- .grid_6 -->
						<div class="clear"></div>
					</article>
					</c:forEach>
					<div class="clear"></div>
				</div>
				<!-- .products_list -->
				<div class="clear"></div>
	      
               <div class="pagination">
		    <ul>
			<li class="prev"><a href="catalog_list?page=${param.page>=2?param.page-1:1}">&#8592;</a></li>
			<li <c:if test="${param.page==1}"> class="curent"</c:if> ><a href="catalog_list?page=1">1</a></li>
			<li <c:if test="${param.page==2}"> class="curent"</c:if> ><a href="catalog_list?page=2">2</a></li>
			<li <c:if test="${param.page==3}"> class="curent"</c:if> ><a href="catalog_list?page=3">3</a></li>
			<li <c:if test="${param.page==4}"> class="curent"</c:if> ><a href="catalog_list?page=4">4</a></li>
			<li <c:if test="${param.page==5}"> class="curent"</c:if> ><a href="catalog_list?page=5">5</a></li>
			<li class="next"><a href="catalog_list?page=${param.page<=4?param.page+1:5}">&#8594;</a></li>
		    </ul>
                </div><!-- .pagination -->
                <p class="pagination_info">显示1到12种产品</p>
                
                <div class="clear"></div>
            </div><!-- #content -->
            
            <div id="sidebar" class="grid_3">
                <aside id="categories_nav">
		    <header class="aside_title">
                        <h3>类别</h3>
                    </header>

		    <nav class="right_menu">
			<ul>
			    <li><a href="#">首页</a></li>
			    <li><a href="#">婚礼用</a></li>
			    <li class="current"><a href="#">戒指</a></li>
			    <li><a href="#">项链</a></li>
			    <li><a href="#">耳环</a></li>
			    <li><a href="#">手链</a></li>
			</ul>
		    </nav><!-- .right_menu -->
                </aside><!-- #categories_nav -->
                
                <aside id="shop_by">
                    <header class="aside_title">
                        <h3>Shop By</h3>
                    </header>
		     
		    <div class="currently_shopping">
			<h4>当前商品筛选：</h4>
			<ul>
			    <li><a title="close" class="close" href="#"></a>价格: <span>$0.00 - $999.99</span></li>
			    <li><a title="close" class="close" href="#"></a>品牌: <span>Apple</span></li>
			</ul>
			    
			<a class="clear_all" href="#">全部清除</a>
			    
			<div class="clear"></div>
		    </div><!-- .currently_shopping -->
		     
		    <h4 class="sub_title">类型</h4>
                    
                    <nav class="check_opt">
			<ul>
			    <li><a href="#">家用 (23)</a></li>
			    <li><a href="#">车用 (27)</a></li>
			    <li><a href="#">办公室用 (9)</a></li>
			</ul>
		    </nav><!-- .check_opt -->
		     
		    <h4 class="sub_title">价格</h4>

                    <nav class="check_opt price">
			<ul>
			    <li><a href="#">0.00 - $49.99 (21)</a></li>
			    <li><a href="#">$50.00 - $99.99 (7)</a></li>
			    <li><a href="#">$100.00 及以上 (15)</a></li>
			</ul>
		    </nav><!-- .check_opt -->
                </aside><!-- #shop_by -->

                <aside id="specials" class="specials">
                    <header class="aside_title">
                        <h3>特价</h3>
                    </header>

		    <ul>
			<li>
			    <div class="prev">
				<a href="#"><img src="/img/content/product7.png" alt="Product 7" title=""></a>
			    </div>

			    <div class="cont">
				<a href="#">Emerald Cut Emerald Ring</a>
				<div class="prise"><span class="old">$1770.00</span> $750.00</div>
			    </div>
			</li>

			<li>
			    <div class="prev">
				<a href="#"><img src="/img/content/product1.png" alt="Product 1" title=""></a>
			    </div>

			    <div class="cont">
				<a href="#">Handmade Emerald Diamond Solitaire</a>
				<div class="prise">$3250.00</div>
			    </div>
			</li>
		     </ul>
                </aside><!-- #specials -->

                <aside id="compare_products">
                    <header class="aside_title">
                        <h3>商品比较</h3>
                    </header>

		    <ul>
			<li><a title="close" class="close" href="#"></a>Home Collection Honeysuckle Orchid Flameless</li>
			<li><a title="close" class="close" href="#"></a>Caldrea Linen and Room Spray, Ginger Pomelo</li>
			<li><a title="close" class="close" href="#"></a>Fresh Wave Travel Size Spray</li>
		    </ul>

		    <button class="compare">比较</button>
		    <a class="clear_all" href="#">全部清除</a>

		    <div class="clear"></div>
                </aside><!-- #compare_products -->

                <aside id="newsletter_signup">
                    <header class="aside_title">
                        <h3>登录以查看公告</h3>
                    </header>

		    <p>登录以获取更多关于折扣的信息。</p>

		    <form class="newsletter">
			<input type="email" name="newsletter" class="your_email" value="" placeholder="Enter your email address...">
			<input type="submit" id="submit" value="Subscribe">
		    </form>
                </aside><!-- #newsletter_signup -->
                
            </div><!-- .sidebar -->
            <div class="clear"></div>
        </div><!-- .container_12 -->
    </section><!-- #main -->
    <div class="clear"></div>
        
    <c:import url="footer.jsp" charEncoding="utf-8" /> 
    
</body>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
</html>
