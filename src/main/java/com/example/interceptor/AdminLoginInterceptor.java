package com.example.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminLoginInterceptor extends HandlerInterceptorAdapter {
    //private static final String[] URIs = {"/adm"};
 
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        boolean flag = true;
        String url = request.getRequestURL().toString();
        String admName =  (String)request.getSession().getAttribute("aName"); 
        System.out.println("aName: " + admName);
        System.out.println(">>>: " + url);
        if(admName==null){
	        //for (String s : URIs) {
	            //if (url.contains(s)) {//如果访问管理页面
	            	//request.setAttribute("loginMsg", "<h3 style='color:red'>请先登录！</h3>");
	            	request.getRequestDispatcher("/shop/loginadm").forward(request, response);
	                return false;
	            //}
	        //}
        }
        
        return flag;
    }
 
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
    }
}
