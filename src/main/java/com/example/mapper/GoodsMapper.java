package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.model.Goods;

public interface  GoodsMapper {
	List<Goods> findSpecialGoods();
	List<Goods> findAllGoods();
	List<Goods> findGoodsByPage(int page);
	List<Goods> goodsSearch(@Param("search")String search, @Param("page")int page);
	
	List<Goods> searchGoods(@Param("type")int type, @Param("page")int page);
	int delGoods(int gid);
	Goods selGoods(int gsID);
	int updateGoods(Goods good);
	int addGoods(Goods good);

	List<Goods> findCartGoods(String userID);
	float totalCart(String userName);
	int selCart(int gsID,String userName);
	int delCart(int gsID,String userName);
	int updateCart(int gsID,int cartNum,String userName);
	int addCart(int gsID, int cartNum, String userName);
}
