package com.example.controller;

import io.lettuce.core.RedisFuture;
import io.lettuce.core.api.async.RedisAsyncCommands;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import com.example.lettuce.RedisCli;
import com.example.model.Goods;
import com.example.model.Type;

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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.mapper.*;

@Controller
public class ShopController {
	
	@Autowired
	GoodsMapper goodsMapper;
	@Autowired
	TypeMapper typeMapper;

	Logger logger = LoggerFactory.getLogger(ShopController.class);
	
	private List<Type> readTypesFromRedis() throws Exception {
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
	
		final List<Type> types = new ArrayList<Type>();
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
	
	private List<Goods> readGoodsFromRedis() throws Exception {
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
	
		final List<Goods> goods = new ArrayList<Goods>();
		RedisFuture<List<String>> futureKeys = asyncCommands.keys("good*");
		
		List<String> keys = futureKeys.get(); //它阻塞和等待直到承诺的结果是可用状态
		
		if(keys.size()==0) return goods;
		
		for(String key: keys){
			RedisFuture<Map<String, String>> futureMap = asyncCommands.hgetall(key);
			Map<String, String> map = futureMap.get(); //它阻塞和等待直到承诺的结果是可用状态
			Goods good = new Goods(); 
			good.setGsID( Integer.valueOf(map.get("gsID")) );
			good.setGsName( map.get("gsName") );
			good.setGsImage( map.get("gsImage") );
			good.setGsPrice( Float.valueOf(map.get("gsPrice")) );
			good.setGsModel( map.get("gsModel") );
			good.setGsNum( Integer.valueOf(map.get("gsNum")) );
			good.setTypeID( Integer.valueOf(map.get("typeID")) );
			good.setGsColor( map.get("gsColor") );
			good.setGsSize( map.get("gsSize") );
			good.setCartNum( Integer.valueOf(map.get("cartNum")) );
			goods.add(good);
		}
		logger.debug("----------readgood from redis-------------------");
		return goods;
	}
	
	private void writeTypesToRedis(List<Type> types) {
		//RedisCommands<String, String> syncCommands = RedisCli.connection.sync();
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
		
		for(Type type: types){
			Map<String, String> map = new HashMap<String, String>();
			map.put("typeID", String.valueOf(type.getTypeID()));
			map.put("typeName", type.getTypeName());
			asyncCommands.hmset("type:"+type.getTypeID(), map);
		}
	}
	
	private void writeGoodsToRedis(List<Goods> goods) {
		//RedisCommands<String, String> syncCommands = RedisCli.connection.sync();
		RedisAsyncCommands<String, String> asyncCommands = RedisCli.connection.async();
		
		for(Goods good: goods){
			Map<String, String> map = new HashMap<String, String>();
			map.put("gsID", String.valueOf(good.getGsID()));
			map.put("gsName", good.getGsName());
			map.put("gsImage", good.getGsImage());
			map.put("gsPrice", String.valueOf(good.getGsPrice()));
			map.put("gsModel", good.getGsModel());
			map.put("gsNum", String.valueOf(good.getGsNum()));
			map.put("typeID", String.valueOf(good.getTypeID()));
			map.put("gsColor", good.getGsColor());
			map.put("gsSize", good.getGsSize());
			map.put("cartNum", String.valueOf(good.getCartNum()));
			asyncCommands.hmset("good:"+good.getGsID(), map);
		}
	}
	
	//首页-显示特色产品
	@GetMapping("/shop/index")
	public String shopIndex(Model model) throws Exception{
		logger.debug("----------index runing.........-------------------");
		List<Type> type2 = null;
		List<Goods> goods = null;
		type2 = readTypesFromRedis();
		goods = readGoodsFromRedis();
		if(type2.size()==0){
			logger.debug("----------readtype from database-------------------");
			type2 =  typeMapper.findAllType();
			writeTypesToRedis(type2);
		}
		if(goods.size()==0){
			logger.debug("----------readgood from database-------------------");
			goods =  goodsMapper.findSpecialGoods();
			writeGoodsToRedis(goods);
		}
		model.addAttribute("type2", type2);
		model.addAttribute("goods", goods);
		return "client/index";
	}
	
	//
	@GetMapping("/shop/admgoods")
	public String admgoods(@RequestParam(value = "gpage", defaultValue = "1") int gpage, Model model) throws Exception{
		logger.debug("----------admgoods runing.........-------------------");
		List<Goods> goods = null;
		goods = readGoodsFromRedis();
		if(goods.size()==0){
			logger.debug("----------readgood from database-------------------");
			goods =  goodsMapper.findGoodsByPage(gpage);
			writeGoodsToRedis(goods);
		}
		
		model.addAttribute("goods2", goods);
		
		return "admin/admgoods";
	}
	

	@GetMapping("/shop/admtype")
	public String admtype(Model model) throws Exception{
		logger.debug("----------admtype runing.........-------------------");
		List<Type> type2 = null;
		type2 = readTypesFromRedis();
		if(type2.size()==0){
			logger.debug("----------readtype from database-------------------");
			type2 =  typeMapper.findAllType();
			writeTypesToRedis(type2);
		}
		model.addAttribute("typetest", type2);
		return "admin/admtype";
	}
	
	@GetMapping("/shop/product_page")
	public String product_page(){
		return "client/product_page";
	}
	
	@GetMapping("/shop/shopping_cart")
	public String shopping_cart(HttpSession session,Model model){
		String a =(String) session.getAttribute("uName");
		model.addAttribute("goods", goodsMapper.findCartGoods(a));
		model.addAttribute("total", goodsMapper.totalCart(a));
		return "client/shopping_cart";
	}
	
	@GetMapping("/shop/checkout")
	public String checkout(){
		return "client/checkout";
	}
	
	@GetMapping("/shop/catalog_grid")
	public String catalog_grid(@RequestParam(value = "typeID", defaultValue = "0") int type, @RequestParam("page") int page, Model model) throws Exception{
		logger.debug("----------catalog_grid runing.........-------------------");
		List<Goods> goods = null;
		goods = readGoodsFromRedis();
		if(goods.size()==0){
			logger.debug("----------readtype from database-------------------");
			if(type == 0){
				goods = goodsMapper.findGoodsByPage(page);
			}else{
				goods = goodsMapper.searchGoods(type, page);
			}
			//goods =  typeMapper.findAllType();
			writeGoodsToRedis(goods);
		}
		//if(type == 0){
		//	model.addAttribute("pagegoods", goodsMapper.findGoodsByPage(page));
		//}else{
			model.addAttribute("pagegoods", goods);
		//}
		return "client/catalog_grid";
	}
	
	@GetMapping("/shop/catalog_list")
	public String catalog_list(@RequestParam(value = "typeID", defaultValue = "0") int type, @RequestParam("page") int page, Model model){
		if(type == 0){
			model.addAttribute("pagegoods", goodsMapper.findGoodsByPage(page));
		}else{
			model.addAttribute("pagegoods", goodsMapper.searchGoods(type, page));
		}
		return "client/catalog_list";
	}
	
	@GetMapping("/shop/compare")
	public String compare(){
		return "client/compare";
	}
	
	@GetMapping("/shop/contact_us")
	public String contact_us(){
		return "client/contact_us";
	}
	
	@GetMapping("/shop/404")
	public String shop404(){
		return "client/404";
	}
	
	@GetMapping("/shop/blog")
	public String blog(){
		return "client/blog";
	}
	
	@GetMapping("/shop/blog_post")
	public String blog_post(){
		return "client/blog_post";
	}
	
	@GetMapping("/shop/buy_now")
	public String buy_now(){
		return "client/buy_now";
	}
	
	/*@GetMapping("/shop/")
	public String header(Model model){
		model.addAttribute("type2", typeMapper.findAllType());
		return "header";
	}*/
	@GetMapping("/shop/searchgoods")
	public String searchGoods(@RequestParam("typeID") int type, @RequestParam("gpage") int gpage, Model model){
		switch(type){
			case 0:
				model.addAttribute("goods2", goodsMapper.findGoodsByPage(gpage));//.findAllGoods());
				break;
			case 1:
				model.addAttribute("goods2", goodsMapper.searchGoods(1, gpage));
				break;
			case 2:
				model.addAttribute("goods2", goodsMapper.searchGoods(2, gpage));
				break;
			case 3:
				model.addAttribute("goods2", goodsMapper.searchGoods(3, gpage));
				break;
			case 4:
				model.addAttribute("goods2", goodsMapper.searchGoods(4, gpage));
				break;
		}
		
		return "admin/admgoods";
	}
	
	@GetMapping("/shop/delgoods")
	public String delgoods(@RequestParam("gsID") int gID, Model model){
		System.out.println(gID);
		goodsMapper.delGoods(gID);
		return "redirect:/shop/admgoods";
	}
	
	@GetMapping("/shop/updategoods")
	public String updategoods(@RequestParam("gsID") int gsID, Model model){
		System.out.println(gsID);
		model.addAttribute("good", goodsMapper.selGoods(gsID));
		//return "redirect:/shop/admgoods";
		return "admin/admgoods";
	}
	
	@PostMapping("/shop/doupdategoods")
	public String doupdategoods(@Valid@ModelAttribute("goods") Goods goods, BindingResult result, Model model){
		System.out.println(goods);
		int i = goodsMapper.updateGoods(goods);
		System.out.println(i);
		if(i!=1){
			model.addAttribute("msg", "<h6>aaaa</h6>");
			return "redirect:/shop/updategoods?gsID="+goods.getGsID();
			//return "redirect:/shop/updategoods";
		}
		model.addAttribute("msg", "<h6>bbbb</h6>");
		return "redirect:/shop/admgoods";
	}
	/*@PostMapping("/shop/doupdategoods")
	public String doupdategoods(@RequestParam("gsID") int gsID, Model model){
		System.out.println(gsID);
		model.addAttribute("good", goodsMapper.updateGoods(good));
		return "redirect:/shop/admgoods";
	}*/
	
	@GetMapping("/shop/addgoods")
	public String addgoods(@Valid@ModelAttribute("goods") Goods goods, BindingResult result, Model model){
		System.out.println(goods);
		String img=goods.getGsImage();
		img=img.substring(0,img.length()-4);
		goods.setGsImage(img);
		System.out.println(img);
		int i = goodsMapper.addGoods(goods);
		System.out.println(i);
		//return "redirect:/shop/admgoods";
		return "redirect:/shop/admgoods";
	}
	
	
	
	@PostMapping("/shop/addtypes")
	public String addtypes(@Valid@ModelAttribute("type") Type type, BindingResult result, Model model){
		System.out.println(type);
		int i = typeMapper.addTypes(type);
		System.out.println(i);
		return "redirect:/shop/admtype";
	}
	
	@GetMapping("/shop/deltypes")
	public String deltypes(@RequestParam("typeID") int tID, Model model){
		System.out.println(tID);
		typeMapper.delTypes(tID);
		return "redirect:/shop/admtype";
	}
	
	@GetMapping("/shop/updatetypes")
	public String updatetypes(@RequestParam("typeID") int typeID, Model model){
		System.out.println(typeID);
		model.addAttribute("type", typeMapper.selTypes(typeID));
		//return "redirect:/shop/admgoods";
		return "/admin/admtype";
	}
	
	@PostMapping("/shop/doupdatetypes")
	public String doupdatetypes(@Valid@ModelAttribute("typetest") Type type, BindingResult result, Model model){
		System.out.println(type);
		int i = typeMapper.updateTypes(type);
		System.out.println(i);
		if(i!=1){
			model.addAttribute("msg", "<h6>aaaa</h6>");
			return "redirect:/shop/updategoods?typeID="+type.getTypeID();
			//return "redirect:/shop/updategoods";
		}
		model.addAttribute("msg", "<h6>bbbb</h6>");
		return "redirect:/shop/admtype";
	}
	
	@GetMapping("/shop/header")
	public String header(HttpSession session,Model model){
		String a =(String) session.getAttribute("uName");
		model.addAttribute("goods", goodsMapper.findCartGoods(a));
		//return  goodsMapper.findCartGoods(2);
		return "client/header";
	}
	
	@GetMapping("/shop/delCart")
	public String delcart(@RequestParam int gsID,HttpSession session, Model model){
		String a =(String) session.getAttribute("uName");
		goodsMapper.delCart(gsID,a);
		return "redirect:/shop/shopping_cart";
	}
	
	@GetMapping("/shop/updateCart")
	public String updatecart(@RequestParam("gsID") int gsID,@RequestParam("cartNum") int cartNum,HttpSession session, Model model){
		String userName =(String) session.getAttribute("uName");
		int num = goodsMapper.selCart(gsID, userName);
		if(num==0){
			goodsMapper.addCart(gsID, cartNum, userName);
		}
		else{
			goodsMapper.updateCart(gsID, cartNum+num, userName);
		}
		return "shop/shopping_cart";
	}

	
	//@PostMapping(value="/shop/dosearch")
	@RequestMapping(value="/shop/dosearch", method = RequestMethod.POST)
	public String doSearch(@RequestParam String search, HttpSession session, RedirectAttributes model){
		//student stu = new student(name, age);
		System.out.println(search);
		//model.addAttribute("pagegoods", goodsMapper.goodsSearch(search));
		//model.addAttribute("page", 1);
		//model.addFlashAttribute("pagegoods", goodsMapper.goodsSearch(search));
		model.addFlashAttribute("search", search);
		//session.setAttribute("pagegoods", goodsMapper.goodsSearch(search));
		//return ","+search+",";
		//return goodsMapper.goodsSearch(search);
		//return "client/catalog_grid";
		return "redirect:/shop/search";
	}
	
	@RequestMapping("/shop/search")
	public String home(@ModelAttribute("search") String search, Model model) {
		System.out.println("拿到重定向得到的参数msg:" + search);
		//model.addAttribute("search", search);
		model.addAttribute("pagegoods", goodsMapper.goodsSearch(search, 1));
		model.addAttribute("page", 1);
		return "client/catalog_grid";
	}
	
	@GetMapping("/shop/selGoods")
	public String selGoods(@RequestParam("gsID") int gID, Model model){
		model.addAttribute("product", goodsMapper.selGoods(gID));
		System.out.println(model);
		return "/client/product_page";
	}
	
	
}
