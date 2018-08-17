package com.example.mapper;

import org.apache.ibatis.annotations.Param;

import com.example.model.User;

public interface  UserMapper {
	int Register(User user);
	int RegUserName(String userName);
	int Login(@Param("userName")String userName, @Param("userPwd")String userPwd);
	int admLogin(@Param("userName")String userName, @Param("userPwd")String userPwd);

	User searchUser(String uName);
	int userUpdate(User user);
}
