package com.mj.jy.businessRoom.model.service;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.businessRoom.model.dao.BusinessRoomDao;
import com.mj.jy.businessRoom.model.vo.BusinessDTO;
import com.mj.jy.businessRoom.model.vo.BusinessRoom;

@Service("bService")
public class BusinessRoomServiceImpl implements BusinessRoomService{

	
	@Autowired
	private BusinessRoomDao bDao;
	

	/**
	 * 회의실 예약 form service
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
	public ArrayList<BusinessDTO> selectBlist(BusinessDTO bd) {
		return bDao.selectBlist(bd);
	}

	/**
	 * 해당 회의실 정보 service
	 */
	@Override
	public ArrayList<BusinessDTO> selectbRoomList(int roomNo) {
		return bDao.selectbRoomList(roomNo);
	}

	/**
	 *회의실 예약 service
	 */
	@Override
	public int insertBroom(BusinessDTO bd) {
		return bDao.insertBroom(bd);
	}

	/**
	 * 회의실 전체리스트 조회
	 */
	@Override
	public ArrayList<BusinessDTO> selectBroomList() {
		return bDao.selectBroomList();
	}

	
	

}
