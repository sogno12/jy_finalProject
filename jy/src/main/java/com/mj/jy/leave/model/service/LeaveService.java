package com.mj.jy.leave.model.service;

import java.util.ArrayList;

import com.mj.jy.leave.model.vo.LeaveDto;
import com.mj.jy.leave.model.vo.LeaveListDto;
import com.mj.jy.namecard.model.vo.PageInfo;

public interface LeaveService {

	// 나의 휴가 조회
	
	LeaveDto selectMyLeave(String empNo);
	
	// 휴가내용조회 서비스
	int getListCount();
	
	// 휴가내역리스트조회 
	ArrayList<LeaveListDto> selectLeaveList(String empNo,PageInfo pi);
	
}
