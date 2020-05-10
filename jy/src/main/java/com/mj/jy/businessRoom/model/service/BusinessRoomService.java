package com.mj.jy.businessRoom.model.service;

import java.util.ArrayList;

import com.mj.jy.businessRoom.model.vo.BusinessDTO;
import com.mj.jy.businessRoom.model.vo.BusinessRoom;


public interface BusinessRoomService {
	


	/** 회의실예약 form service
	 * @param b
	 * @return
	 */
	int insertBusinessRoom(BusinessRoom b);
	
	/** 회의실예약 리스트 service
	 * @return
	 */
	ArrayList<BusinessDTO> selectBlist(BusinessDTO bd);
	
	/**
	 * 해당 회의실 정보 service
	 * 희의실 예약시
	 */
	ArrayList<BusinessDTO> selectbRoomList(int roomNo);
	
	
	/** 회의실 예약 service
	 * @param bd
	 * @return
	 */
	int insertBroom(BusinessDTO bd);
	
	// 회의실 전체 리스트조회
	ArrayList<BusinessDTO> selectBroomList();
	
	// 회의실 업데이트
	int broomUpdate(int meetingNo);
	
	
}
