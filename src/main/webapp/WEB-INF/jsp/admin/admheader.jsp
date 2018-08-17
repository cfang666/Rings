<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<div id="top">
        <div class="container_12">
            <div class="grid_3">
                <div class="lang">
                    <ul>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </div><!-- .lang -->
                
                <div class="currency">
                    <ul>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </div><!-- .currency -->
            </div><!-- .grid_3 -->

		<div class="grid_9">
			<nav>
				<ul>
					<c:if test="${sessionScope.aName==null}">
						<li><a href="loginadm">登录</a></li>
					</c:if>

					<c:if test="${sessionScope.aName!=null}">
						
						<li><a href="loginoutadm">注销</a></li>
					</c:if>
				</ul>
			</nav>
		</div>
		<!-- .grid_9 -->
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
                        <c:if test="${sessionScope.aName==null}">
                    		&nbsp;&nbsp;&nbsp;&nbsp;<h7>欢迎您， 请<a href="loginadm" style='color:red'>登录</a>
                    	</c:if>
                        <c:if test="${sessionScope.aName!=null}">
                    		&nbsp;&nbsp;&nbsp;&nbsp;欢迎管理员：<h7 style='color:red'>${sessionScope.aName}</h7>
                    	</c:if>
                    </div><!-- .welcome -->
                
                </div><!-- .top_header -->
                
                <c:if test="${sessionScope.aName!=null}">
                <nav class="primary">
                    <ul>
                        <li class="parent">
                        	<a href="admgoods?gpage=1">商品管理</a>
                            <ul class="sub">
                                <li><a href="${pageContext.request.contextPath}/shop/searchgoods?typeID=0&gpage=1">全部商品</a></li>
                                <li><a href="${pageContext.request.contextPath}/shop/searchgoods?typeID=1&gpage=1">戒指</a></li>
                                <li><a href="${pageContext.request.contextPath}/shop/searchgoods?typeID=2&gpage=1">项链</a></li>
                                <li><a href="${pageContext.request.contextPath}/shop/searchgoods?typeID=3&gpage=1">耳环</a></li>
                                <li><a href="${pageContext.request.contextPath}/shop/searchgoods?typeID=4&gpage=1">手链</a></li>
                            </ul>
                        </li>
                        <li><a href="admtype">类别管理</a></li>
                    </ul>
                </nav><!-- .primary -->
                </c:if>
            </div><!-- .grid_9 -->
        </div>
    </header>