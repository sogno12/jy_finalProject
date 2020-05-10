package com.mj.jy.businessRoom.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.mj.jy.businessRoom.model.vo.BusinessDTO;

@Mapper
public interface BusinessRoomDao {
	
	ArrayList<BusinessDTO> selectBlist(BusinessDTO bd);
	
	ArrayList<BusinessDTO> selectbRoomList(int roomNo);
	
	int insertBroom(BusinessDTO bd);
	
	ArrayList<BusinessDTO> selectBroomList();
	
	int broomUpdate(int meetingNo);
	
	
}
