package com.mj.jy.businessRoom.model.service;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.businessRoom.model.dao.BusinessRoomDao;
import com.mj.jy.businessRoom.model.vo.BusinessDTO;
import com.mj.jy.businessRoom.model.vo.BusinessInfo;
import com.mj.jy.businessRoom.model.vo.BusinessRoom;

@Service("bService")
public class BusinessRoomServiceImpl implements BusinessRoomService{

	
	@Autowired
	private BusinessRoomDao bDao;
	

	/**
	 * 회의실 예약 service
	 */
	@Override
	public int insertBusinessRoom(BusinessRoom b) {
		// TODO Auto-generated method stub
		return 0;
	}

	/** 회의실예약 리스트 service
	 * @return
	 */
	@Override
	public ArrayList<BusinessInfo> selectBlist(BusinessDTO bd) {
		
		return bDao.selectBlist(bd);
	}
	
	

}
