<!DOCTYPE html>
<html>
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">

<title>管理员</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">

<link rel="shortcut icon" href="/img/favicon.ico">

<link rel="stylesheet" href="/css/grid.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/normalize.css">

<script src="/js/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="/js/jquery-1.8.3.min.js"><\/script>')
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
           
	<c:import url="admheader.jsp" charEncoding="utf-8" /> 
	
	<div class="breadcrumbs">
        <div class="container_12">
            <div class="grid_12">
                 <span class="current">商品管理</span>
            </div><!-- .grid_12 -->
        </div><!-- .container_12 -->
    </div><!-- .breadcrumbs -->
    
	<div class="container_12">
		<div id="content" class="grid_12">
			<div class="grid_12">
				<div id="wrapper_tab" class="tab1">
					<!-- <a href="#" class="tab1 tab_link">商品查询</a> -->
					<a href="#" class="tab1 tab_link">商品操作</a>
					<!-- <a href="#" class="tab2 tab_link">商品修改</a> -->
					<a href="#" class="tab3 tab_link">商品添加</a>

					<div class="clear"></div>

					<div class="tab1 tab_body">
						
						<c:if test="${requestScope.good == null }">
						<table>
							<tr class="bg">
								<th>商品ID</th>
								<th>商品名称</th>
								<th>商品图片</th>
								<th>商品价格</th>
								<th>商品Model</th>
								<th>商品库存</th>
								<th>商品类别</th>
								<th>商品颜色</th>
								<th>商品大小</th>
								<th>操作	</th>
							</tr>
							<c:forEach items="${goods2}" var="item">
								<tr>
									<td>${item.gsID }</td>
									<td>${item.gsName }</td>
									<td><img src="/img/images/${item.gsImage }.jpg" alt="Product 8" title="" width=100px height=100px></td>
									<td>${item.gsPrice }</td>
									<td>${item.gsModel }</td>
									<td>${item.gsNum }</td>
									<td>
										<c:if test="${item.typeID == 1 }">戒指</c:if>
										<c:if test="${item.typeID == 2 }">项链</c:if>
										<c:if test="${item.typeID == 3 }">耳环</c:if>
										<c:if test="${item.typeID == 4 }">手链</c:if>
									</td>
									<td>${item.gsColor }</td>
									<td>${item.gsSize }</td>
									<td>
										<a href="${pageContext.request.contextPath}/shop/updategoods?gsID=${item.gsID }">修改</a>
										<a href="${pageContext.request.contextPath}/shop/delgoods?gsID=${item.gsID }">删除</a>
									</td>
								</tr>
								
							</c:forEach>
						</table>
						<div class="pagination">
		    				<ul>
		    					<c:if test="${param.typeID==null}">
								<li class="prev"><a href="admgoods?gpage=${param.gpage>=2?param.gpage-1:1}">&#8592;</a></li>
								<li <c:if test="${param.gpage==1 || param.gpage==null}"> class="curent"</c:if> ><a href="admgoods?gpage=1">1</a></li>
								<li <c:if test="${param.gpage==2}"> class="curent"</c:if> ><a href="admgoods?gpage=2">2</a></li>
								<li <c:if test="${param.gpage==3}"> class="curent"</c:if> ><a href="admgoods?gpage=3">3</a></li>
								<li <c:if test="${param.gpage==4}"> class="curent"</c:if> ><a href="admgoods?gpage=4">4</a></li>
								<li <c:if test="${param.gpage==5}"> class="curent"</c:if> ><a href="admgoods?gpage=5">5</a></li>
								<li class="next"><a href="admgoods?gpage=${param.gpage==null?2:(param.gpage<=4?param.gpage+1:5)}">&#8594;</a></li>
		    					<!-- param.gpage<=4?param.gpage+1:5 -->
		    					</c:if>
		    					
		    					<c:if test="${param.typeID!=null}">
								<li class="prev"><a href="searchgoods?typeID=${param.typeID}&gpage=${param.gpage>=2?param.gpage-1:1}">&#8592;</a></li>
								<li <c:if test="${param.gpage==1}"> class="curent"</c:if> ><a href="searchgoods?typeID=${param.typeID}&gpage=1">1</a></li>
								<li <c:if test="${param.gpage==2}"> class="curent"</c:if> ><a href="searchgoods?typeID=${param.typeID}&gpage=2">2</a></li>
								<li <c:if test="${param.gpage==3}"> class="curent"</c:if> ><a href="searchgoods?typeID=${param.typeID}&gpage=3">3</a></li>
								<li <c:if test="${param.gpage==4}"> class="curent"</c:if> ><a href="searchgoods?typeID=${param.typeID}&gpage=4">4</a></li>
								<li <c:if test="${param.gpage==5}"> class="curent"</c:if> ><a href="searchgoods?typeID=${param.typeID}&gpage=5">5</a></li>
								<li class="next"><a href="searchgoods?typeID=${param.typeID}&gpage=${param.gpage<=4?param.gpage+1:5}">&#8594;</a></li>
		    					</c:if>
		    				</ul>
                		</div><!-- .pagination -->
						</c:if>
						<c:if test="${requestScope.good != null }">
						<div class="grid_6 registed_form">
							<form class="registed" action="/shop/doupdategoods" method="post">
								<input type="hidden" name="gsImage" class="" value="${good.gsImage }">
								<div class="text">
									<strong>商品ID:</strong><br> 
									 <input type="text" name="gsID" class="" value="${good.gsID }" readonly="true">
								</div>
								<!-- .userName -->

								<div class="text">
									<strong>商品名称:</strong><br>
									<input type="text" name="gsName" class="" value="${good.gsName }">
								</div>
								<!-- .userPwd -->

								<div class="text">
									<strong>商品图片:</strong><br>
									<img src="/img/images/${good.gsImage }.jpg" alt="Product 8" title="" width=100px height=100px>
								</div>
								<!-- .userPhone -->

								<div class="text">
									<strong> 商品价格:</strong><br>
									<input type="text" name="gsPrice" class="" value="${good.gsPrice }">
								</div>
								<!-- .usertext -->
								
								<div class="text">
									<strong>商品MODEL:</strong><br>
									<input type="text" name="gsModel" class="" value="${good.gsModel }">
								</div>
								
								<div class="text">
 									<strong>商品库存:</strong><br>
									<input type="text" name="gsNum" class="" value="${good.gsNum }">
								</div>
												
								<div class="text">
									<strong>商品类别:</strong><br>
									<select name="typeID">
			    						<option value=1 <c:if test="${good.typeID == 1 }">selected = "true"</c:if>>戒指</option>
			    						<option value=2 <c:if test="${good.typeID == 2 }">selected = "true"</c:if>>项链</option>
			    						<option value=3 <c:if test="${good.typeID == 3 }">selected = "true"</c:if>>耳环</option>
			    						<option value=4 <c:if test="${good.typeID == 4 }">selected = "true"</c:if>>手链</option>
									</select>
								</div>
								
								<div class="text">
									<strong>商品颜色:</strong><br>
									<input type="text" name="gsColor" class="" value="${good.gsColor }">
								</div>

								<div class="text">
									<strong>商品大小:</strong><br>
									<input type="text" name="gsSize" class="" value="${good.gsSize }">
								</div>
								
								<div class="submit">
									<input type="submit" value="修改">
								</div>
								<!-- .submit -->
								
							</form>
							
							<!-- .registed -->
						</div>
						</c:if>
						<!-- .add_comments -->
						<div class="clear"></div>
					</div>

					<div class="tab3 tab_body">
						<form class="registed" action="/shop/addgoods" enctype="multipart/form-data">
								<div class="text">
									<strong>商品名称:</strong><br>
									<input type="text" name="gsName">
								</div>
								<!-- .userPwd -->

								<div class="text">
									<strong>商品图片:</strong><br>
									<input type="file" name="gsImage">
								</div>
								<!-- .userPhone -->

								<div class="text">
									<strong> 商品价格:</strong><br>
									<input type="text" name="gsPrice">
								</div>
								<!-- .usertext -->
								
								<div class="text">
									<strong>商品MODEL:</strong><br>
									<input type="text" name="gsModel">
								</div>
								
								<div class="text">
 									<strong>商品库存:</strong><br>
									<input type="text" name="gsNum">
								</div>
												
								<div class="text">
									<strong>商品类别:</strong><br>
									<select name="typeID">
			    						<option value=1 <c:if test="${good.typeID == 1 }">selected = "true"</c:if>>戒指</option>
			    						<option value=2 <c:if test="${good.typeID == 2 }">selected = "true"</c:if>>项链</option>
			    						<option value=3 <c:if test="${good.typeID == 3 }">selected = "true"</c:if>>耳环</option>
			    						<option value=4 <c:if test="${good.typeID == 4 }">selected = "true"</c:if>>手链</option>
									</select>
								</div>
								
								<div class="text">
									<strong>商品颜色:</strong><br>
									<input type="text" name="gsColor">
								</div>

								<div class="text">
									<strong>商品大小:</strong><br>
									<input type="text" name="gsSize">
								</div>
								
								<div class="submit">
									<input type="submit" value="添加">
								</div>
								<!-- .submit -->
								
							</form>
					<!-- .tab3 .tab_body -->
					
					<div class="clear"></div>
				</div>
				​
				<!-- #wrapper_tab -->
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
		<!-- #content -->

		<div class="clear"></div>
	</div>
	</div>
	<!-- .container_12 -->
	<!-- </section> -->
	<!-- #main -->
	<div class="clear"></div>
	<br>
	<br>
	<br>
	<br>

    
</body>
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
</html>
