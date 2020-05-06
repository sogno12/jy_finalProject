package com.mj.jy.businessRoom.model.service;

import java.util.ArrayList;

import com.mj.jy.businessRoom.model.vo.BusinessDTO;
import com.mj.jy.businessRoom.model.vo.BusinessInfo;
import com.mj.jy.businessRoom.model.vo.BusinessRoom;


public interface BusinessRoomService {
	


	/** 회의실예약 service
	 * @param b
	 * @return
	 */
	int insertBusinessRoom(BusinessRoom b);
	
	/** 회의실예약 리스트 service
	 * @return
	 */
	ArrayList<BusinessInfo> selectBlist(BusinessDTO bd);
}
