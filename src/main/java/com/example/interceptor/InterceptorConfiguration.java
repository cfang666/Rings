package com.example.interceptor;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@SuppressWarnings("deprecation")
@Component
public class InterceptorConfiguration extends WebMvcConfigurerAdapter{
	
	@Bean
	public AdminLoginInterceptor adminLoginInterceptor() {
		return new AdminLoginInterceptor();
	}
	
	@Bean
	public Shopping_CartInterceptor shopping_CartInterceptor() {
		return new Shopping_CartInterceptor();
	}
	
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 注册拦截器
        InterceptorRegistration irAdmin = registry.addInterceptor(adminLoginInterceptor());
        // 配置拦截的路径
        irAdmin.addPathPatterns("/shop/admgoods");
        irAdmin.addPathPatterns("/shop/admtype");

        // 注册拦截器
        InterceptorRegistration irShopping_Cart = registry.addInterceptor(shopping_CartInterceptor());
        // 配置拦截的路径
        irShopping_Cart.addPathPatterns("/shop/shopping_cart");
        //irShopping_Cart.addPathPatterns("/shop/admtype");
        
        // 配置不拦截的路径
        //ir.excludePathPatterns("/**.html");

        // 还可以在这里注册其它的拦截器
        //registry.addInterceptor(new OtherInterceptor()).addPathPatterns("/**");
    }
}
