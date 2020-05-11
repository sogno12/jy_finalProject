package com.mj.jy.leave.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;

import com.mj.jy.leave.model.dao.LeaveDao;
import com.mj.jy.leave.model.vo.LeaveDto;
import com.mj.jy.leave.model.vo.LeaveListDto;
import com.mj.jy.namecard.model.vo.PageInfo;

@Service("lService")
public class LeaveServiceImpl implements LeaveService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private LeaveDao lDao;

	// 나의 휴가 조회
	@Override
	public LeaveDto selectMyLeave(String empNo) {
			return lDao.selectMyLeave(empNo);
	}

	// 휴가내역 총 갯수조회 서비스
	@Override
	public int getListCount() {
		return lDao.getLeaveListCount();
	}

	// 사용한 휴가내역 조회
	@Override
	public ArrayList<LeaveListDto> selectLeaveList(String empNo,PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return lDao.selectLeaveList(empNo,rowBounds);
	}
	
	
	


}
