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
                 <span class="current">商品类别管理</span>
            </div><!-- .grid_12 -->
        </div><!-- .container_12 -->
    </div><!-- .breadcrumbs -->
    
	<!-- <section id="main"> -->
	<br>
	<div class="container_12">
		<div id="content" class="grid_12">
			<div class="grid_12">
				<div id="wrapper_tab" class="tab1">
					<a href="#" class="tab1 tab_link">商品类别操作</a>
					<a href="#" class="tab2 tab_link">商品类别添加</a>

					<div class="clear"></div>

					<div class="tab1 tab_body">
					<c:if test="${requestScope.type == null}">
						<table>
							<tr class="bg">
								<th>类别ID</th>
								<th>类别名称</th>
								<th>操作</th>
							</tr>
							<c:forEach items="${typetest }" var="item">
								<tr>
									<td>${item.typeID }</td>
									<td>${item.typeName }</td>
									<td>
									<a href="${pageContext.request.contextPath}/shop/updatetypes?typeID=${item.typeID }">修改</a>
									<a href="${pageContext.request.contextPath}/shop/deltypes?typeID=${item.typeID }">删除</a>
									</td>
								</tr>
							</c:forEach>
						</table>
						</c:if>
						<c:if test="${requestScope.type != null }">
						<div class="grid_6 registed_form">
							<form class="registed" action="/shop/doupdatetypes" method="post">
								
								<div class="text">
									<strong>类别ID:</strong><br> 
									 <input type="text" name="typeID" class="" value="${type.typeID }" readonly="true">
								</div>
								<!-- .userName -->

								<div class="text">
									<strong>类别名称:</strong><br>
									<input type="text" name="typeName" class="" value="${type.typeName }">
								</div>
								<!-- .userPwd -->
								<div class="submit">
									<input type="submit" value="修改">
								</div>
								
							</form>
							
							<!-- .registed -->
						</div>
						</c:if>
						<!-- .add_comments -->
						<div class="clear"></div>
					</div>
					<!-- .tab1 .tab_body -->
					
					<div class="tab2 tab_body">
						<div class="grid_6 registed_form">
							<form class="registed" action="/shop/addtypes" method="post">

								<div class="text">
									<strong>类别名称:</strong><br> <input type="text" name="typeName"
										class="" value="">
								</div>
								<!-- .userName -->

								<div class="submit">
									<input type="submit" value="添加">
								</div>
								<!-- .submit -->
							</form>
							<!-- .registed -->
						</div>
						<!-- .grid_6 -->
						<div class="clear"></div>
					</div>
					<!-- .tab2 .tab_body -->


					<!-- <div class="tab3 tab_body">
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
						.add_comments
						<div class="clear"></div>
					</div>
					.tab3 .tab_body -->
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
