package com.mj.jy.leave.model.service;

import java.util.ArrayList;

import com.mj.jy.leave.model.vo.LeaveDto;
import com.mj.jy.leave.model.vo.LeaveListDto;
import com.mj.jy.namecard.model.vo.PageInfo;

public interface LeaveService {

	// 나의 휴가 조회
	
	LeaveDto selectMyLeave(int empNo);
	
	// 휴가내역리스트조회 
	ArrayList<LeaveListDto> selectLeaveList(int empNo);
	
}
