package com.example.controller;

import io.lettuce.core.RedisFuture;
import io.lettuce.core.api.async.RedisAsyncCommands;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import com.example.lettuce.RedisCli;
import com.example.model.Goods;
import com.example.model.Type;
import com.example.model.User;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.mapper.UserMapper;

@Controller
public class UserController {
	
	@Autowired
	UserMapper register, login, userMapper;
	
	/*Logger logger = LoggerFactory.getLogger(ShopController.class);
	
	private List<User> readFromRedis() throws Exception {
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
	
		final List<User> types = new ArrayList<User>();
		RedisFuture<List<String>> futureKeys = asyncCommands.keys("type*");
		
		List<String> keys = futureKeys.get(); //它阻塞和等待直到承诺的结果是可用状态
		
		if(keys.size()==0) return types;
		
		for(String key: keys){
			RedisFuture<Map<String, String>> futureMap = asyncCommands.hgetall(key);
			Map<String, String> map = futureMap.get(); //它阻塞和等待直到承诺的结果是可用状态
			Type type = new Type(); 
			type.setTypeID( Integer.valueOf(map.get("typeID")) );
			type.setTypeName( map.get("typeName") );
			types.add(type);
		}
		logger.debug("----------readtype from redis-------------------");
		return types;
	}
	
	private void writeToRedis(List<Type> types) {
		//RedisCommands<String, String> syncCommands = RedisCli.connection.sync();
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
		
		for(Type type: types){
			Map<String, String> map = new HashMap<String, String>();
			map.put("typeID", String.valueOf(type.getTypeID()));
			map.put("typeName", type.getTypeName());
			asyncCommands.hmset("type:"+type.getTypeID(), map);
		}
	}*/
	
	//注册
	@GetMapping("/shop/register")
	public String register(){
		return "client/register";
	}
	
	@PostMapping(value="/shop/doreg")
	public String doReg(@Valid @ModelAttribute("user") User user, BindingResult result, Model model){
		int i = register.Register(user);
		int j = register.RegUserName(user.getUserName());
		if(j==1){
			model.addAttribute("registerMsg", "<h6 style='color:red'>用户名已存在！</h6>");
			return "client/register";
		}
		if(result.hasErrors() || i<=0){
			model.addAttribute("registerMsg", "<h6 style='color:red'>错误！</h6>");
			return "client/register";
		}
		//System.out.println(user);
		model.addAttribute("loginMsg", "<h6 style='color:red'>注册成功,请登录！</h6>");
		model.addAttribute("userName", user.getUserName());
		return "client/login";
	}
	
	//user登陆
	@GetMapping("/shop/login")
	public String login(HttpServletRequest request, Model model){
		if(request.getCookies()!=null){
			for(Cookie c:  request.getCookies()){
				if(c.getName().equals("userName")){
					String userName = c.getValue();
					model.addAttribute("userName", userName);
				}if(c.getName().equals("userPwd")){
					String userPwd = c.getValue();
					model.addAttribute("userPwd", userPwd);
				}
			}
		}
		return "client/login";
	}
	
	@SuppressWarnings("unused")
	@PostMapping("/shop/dologin")
	public String dologin(@RequestParam String userName, @RequestParam String userPwd,
			@RequestParam String Remember_password, HttpSession session, HttpServletRequest request,
			HttpServletResponse response, Model model){
		//System.out.println("-"+Remember_password+"-");
		int i = login.Login(userName, userPwd);
		Cookie ckUserName = null;
		Cookie ckUserPwd = null;
		if(i==1){
			session.setAttribute("uName", userName);
			if(!"".equals(Remember_password)){
				ckUserName = new Cookie("userName", userName);
				ckUserPwd = new Cookie("userPwd", userPwd);
				ckUserName.setMaxAge(3600);
				response.addCookie(ckUserName);
				ckUserPwd.setMaxAge(3600);
				response.addCookie(ckUserPwd);
			}else if(ckUserPwd!=null){
					ckUserPwd.setMaxAge(0);
			}
			return "redirect:/shop/index";
		}else{
			model.addAttribute("loginMsg", "<h6 style='color:red'>用户名或密码错误！</h6>");
			return "client/login";
		}
	}
	
	//user注销
	@GetMapping("/shop/loginout")
	public String logout(HttpSession session){
		session.removeAttribute("uName");
		return "redirect:/shop/login";
	}
	
	//adm登陆
	@GetMapping("/shop/loginadm")
	public String admlogin(HttpServletRequest request, Model model){
		if(request.getCookies()!=null){
			for(Cookie c:  request.getCookies()){
				if(c.getName().equals("admName")){
					String admName = c.getValue();
					model.addAttribute("admName", admName);
				}if(c.getName().equals("admPwd")){
					String admPwd = c.getValue();
					model.addAttribute("admPwd", admPwd);
				}
			}
		}
		return "admin/login";
	}
	
	@SuppressWarnings("unused")
	@PostMapping("/shop/dologinadm")
	public String doadmlogin(@RequestParam String userName, @RequestParam String userPwd,
			@RequestParam String Remember_password, HttpSession session, HttpServletRequest request,
			HttpServletResponse response, Model model){
		//System.out.println("-"+Remember_password+"-");
		int i = login.admLogin(userName, userPwd);
		Cookie ckAdmName = null;
		Cookie ckAdmPwd = null;
		if(i==1){
			session.setAttribute("aName", userName);
			if(!"".equals(Remember_password)){
				ckAdmName = new Cookie("admName", userName);
				ckAdmPwd = new Cookie("admPwd", userPwd);
				ckAdmName.setMaxAge(3600);
				response.addCookie(ckAdmName);
				ckAdmPwd.setMaxAge(3600);
				response.addCookie(ckAdmPwd);
			}else if(ckAdmPwd!=null){
				ckAdmPwd.setMaxAge(0);
			}
			return "redirect:/shop/admgoods";
		}else{
			model.addAttribute("loginMsg", "<h6 style='color:red'>用户名或密码错误！</h6>");
			return "admin/login";
		}
	}
	
	//adm注销
	@GetMapping("/shop/loginoutadm")
	public String admloginout(HttpSession session){
		session.removeAttribute("aName");
		return "redirect:/shop/loginadm";
	}
	
	@GetMapping("/shop/info")
	public String info(HttpSession session, Model model){
		String uName =(String) session.getAttribute("uName");
		model.addAttribute("user", userMapper.searchUser(uName));
		return "client/info";
	}

	@PostMapping("/shop/doupdate")
	public String doupdate(@Valid @ModelAttribute("stu1") User user, BindingResult result, RedirectAttributes model){
		//System.out.println("-"+Remember_password+"-");
		int i = userMapper.userUpdate(user);
		model.addFlashAttribute("userName", user.getUserName());
		if(i==1){			
			model.addFlashAttribute("updateMsg", "<h6 style='color:red'>成功！</h6>");
		}else{
			model.addFlashAttribute("updateMsg", "<h6 style='color:red'>失败！</h6>");
		}
		return "redirect:/shop/upinfo";
	}
	
	@RequestMapping("/shop/upinfo")
	public String home(@ModelAttribute("updateMsg") String updateMsg, @ModelAttribute("userName") String userName, Model model) {
		model.addAttribute("user", userMapper.searchUser(userName));
		model.addAttribute("updateMsg", updateMsg);
		return "client/info";
	}

}
