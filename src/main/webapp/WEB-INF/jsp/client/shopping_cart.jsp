<!DOCTYPE html>
<html>
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">
    
    <title>购物车</title>
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
    
    <section id="main">
        <div class="container_12">
            <div id="content" class="grid_12">
                <header>
                    <h1 class="page_title">购物车</h1>
                </header>
                    
                <article>
                    <table class="cart_product">
                        <tr class="bg">
                            <th class="images"></th>
                            <th class="name">产品名称</th>
                            <th class="edit"> </th>
                            <th class="price">单价</th>
                            <th class="qty">数量</th>
                            <th class="subtotal">小计</th>
                            <th class="close"> </th>
                        </tr>
                         <c:forEach items="${goods}" var="item">
                        <tr>
                            <td class="images"><a href="product_page"><img src="/img/content/product${item.gsImage}.png" alt="Product 12" title=""></a></td>
                            <td class="name"> ${item.gsName}</td>
                            <td class="edit"><a title="Edit" href="#">Edit</a></td>
                            <td class="price">${item.gsPrice}</td>
                            <td class="qty"><input type="text" name="" value="" placeholder="${item.cartNum}"></td>
                            <td class="subtotal">${item.gsPrice*item.cartNum}</td>
                            <td class="close"><a title="close" class="close" href="${pageContext.request.contextPath}/shop/delCart?gsID=${item.gsID}"></a></td>
                        </tr>
                        </c:forEach>
                        <tr>
                            <td colspan="7" class="cart_but">
                                <a href="#" class="continue"><img src="/img/cont.png" alt="" title=""> 继续购物</a>
                                <a href="#" class="update"><img src="/img/update.png" alt="" title=""> 刷新购物车</a>
                            </td>
                        </tr>
                    </table>
                    
                    <div id="cart_forms">
                        <div class="grid_4">
                            <div class="bottom_block estimate">
                                <h3>估计运费和税</h3>
                                <p>输入您的目的地以获取运费估算值。</p>
                                <form>
                                    <p>
                                        <strong>省:</strong><sup>*</sup><br>
                                        <select>
                                            <option>**省</option>
                                            <option>**省</option>
                                        </select>
                                    </p>
                                    <p>
                                        <strong>市:</strong><br>
                                        <select class="bottom-index">
                                            <option>**市</option>
                                            <option>**市</option>
                                        </select>
                                    </p>
                                    <p>
                                        <strong>邮政编码</strong><br>
                                        <input type="text" name="" value="">
                                    </p>
                                    <input type="submit" id="get_estimate" value="得到报价">
                                </form>

                            </div><!-- .estimate -->
                        </div><!-- .grid_4 -->

                        <div class="grid_4">
                            <div class="bottom_block discount">
                                <h3>折扣代码</h3>
                                <p>如果您有优惠券代码，请输入优惠券代码。</p>
                                <form>
                                    <p><input type="text" name="" value=""></p>
                                    <input type="submit" id="apply_coupon" value="申请优惠">
                                </form>
                            </div><!-- .discount -->
                        </div><!-- .grid_4 -->

                        <div class="grid_4">
                            <div class="bottom_block total">
                                <table class="subtotal">
                                    <tr>
                                        <td>小计</td><td class="price">${total}</td>
                                    </tr>
                                    <tr class="grand_total">
                                        <td>总计</td><td class="price">${total}</td>
                                    </tr>
                                </table>
                                <button class="checkout">进行结算 <img src="/img/checkout.png" alt="" title=""></button>
                         
                            </div><!-- .total -->
                        </div><!-- .grid_4 -->

                        <div class="clear"></div>
                    </div><!-- #cart_forms -->
                    <div class="clear"></div>
		</article>
                
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
                                            <a href="product_page"><img src="/img/content/product1.png" alt="Product 1" title=""></a>
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
                                             <a href="product_page"><img src="/img/content/product2.png" alt="Product 2" title=""></a>
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
                                            <a href="product_page"><img src="/img/content/product3.png" alt="Product 3" title=""></a>
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
                                            <a href="product_page"><img src="/img/content/product4.png" alt="Product 4" title=""></a>
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
                                            <a href="product_page"><img src="/img/content/product5.png" alt="Product 5" title=""></a>
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
