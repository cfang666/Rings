package com.example.mapper;

import java.util.List;

import com.example.model.Type;

public interface  TypeMapper {
	List<Type> findAllType();

	int addTypes(Type type);
	int delTypes(int tid);
	Type selTypes(int tyID);
	int updateTypes(Type type);
}
