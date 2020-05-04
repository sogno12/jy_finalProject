package com.mj.jy.commute.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.mj.jy.commute.model.vo.CommuteDto;

@Mapper
public interface CommuteDao {
	
	public ArrayList<CommuteDto> selectCommuteList();

}
