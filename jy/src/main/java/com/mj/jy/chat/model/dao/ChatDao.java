package com.mj.jy.chat.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.mj.jy.chat.model.vo.Dept;

@Mapper
public interface ChatDao {

	ArrayList<Dept> selectDept();
	
}