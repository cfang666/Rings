package com.example.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Shopping_CartInterceptor extends HandlerInterceptorAdapter {
    private static final String[] URIs = {"shopping_cart/", "/shopping_cart"};
 
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        boolean flag = true;
        String url = request.getRequestURL().toString();
        String username =  (String)request.getSession().getAttribute("uName"); 
        System.out.println("uName: " + username);
        System.out.println(">>>: " + url);
        if(username==null){
	        for (String s : URIs) {
	            if (url.contains(s)) {//如果访问管理页面
	            	request.setAttribute("loginMsg", "<h3 style='color:red'>请先登录！</h3>");
	            	request.getRequestDispatcher("/shop/login").forward(request, response);
	                return false;
	            }
	        }
        }
        
        return flag;
    }
 
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
    }
}
