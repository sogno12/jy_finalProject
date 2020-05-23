package com.mj.jy.leave.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.mj.jy.leave.model.vo.LeaveDto;
import com.mj.jy.leave.model.vo.LeaveListDto;
import com.mj.jy.namecard.model.vo.PageInfo;

@Mapper
public interface LeaveDao {

		// 나의 휴가 조회 
		LeaveDto selectMyLeave(int empNo);
		

		ArrayList<LeaveListDto> selectLeaveList(int empNo);
}
