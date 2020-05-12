package com.mj.jy.schedule.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.schedule.model.dao.ScheduleDao;
import com.mj.jy.schedule.model.vo.Schedule;

@Service("scService")
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private ScheduleDao scDao;
	
	// 일정 등록
	@Override
	public int insertSchedule(Schedule eventData) {
		return scDao.insertSchedule(sqlSession, eventData);
	}

	// 일정 조회
	@Override
	public ArrayList<Schedule> selectSchedule(int memberNo) {
		return scDao.selectSchedule(sqlSession, memberNo);
	}

	// 일정 드래그앤드롭
	@Override
	public int dragSchedule(HashMap map) {
		return scDao.dragSchedule(sqlSession, map);
	}

	// 일정 수정
	@Override
	public int updateSchedule(Schedule event) {
		return scDao.updateSchedule(sqlSession, event);
	}

	// 일정 삭제
	@Override
	public int deleteSchedule(String scheduleNo) {
		return scDao.deleteSchedule(sqlSession, scheduleNo);
	}
}
