package com.mj.jy.businessRoom.model.service;

import com.mj.jy.businessRoom.model.vo.BusinessRoom;

public interface BusinessRoomService {

	/** 회의실예약 service
	 * @param b
	 * @return
	 */
	int insertBusinessRoom(BusinessRoom b);
}
