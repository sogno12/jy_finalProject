package com.mj.jy.businessRoom.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.mj.jy.businessRoom.model.vo.BusinessDTO;
import com.mj.jy.businessRoom.model.vo.BusinessInfo;

@Mapper
public interface BusinessRoomDao {
	
	ArrayList<BusinessInfo> selectBlist(BusinessDTO bd);
}
