package com.mj.jy.schedule.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mj.jy.schedule.model.vo.Schedule;

@Repository("scDao")
public class ScheduleDao {
	
	// 일정 등록
	public int insertSchedule(SqlSessionTemplate sqlSession, Schedule eventData) {
		return sqlSession.insert("scheduleMapper.insertSchedule", eventData);
	}

	// 일정 조회
	public ArrayList<Schedule> selectSchedule(SqlSessionTemplate sqlSession, int memberNo) {
		return (ArrayList)sqlSession.selectList("scheduleMapper.selectSchedule", memberNo);
	}
	
	// 일정 드래그앤드롭
	public int drapSchedule(SqlSessionTemplate sqlSession, HashMap map) {
		return sqlSession.update("scheduleMapper.drapSchedule", map);
	}
	
	// 일정 수정
	public int updateSchedule(SqlSessionTemplate sqlSession, Schedule event) {
		return sqlSession.update("scheduleMapper.updateSchedule", event);
	}
	
	// 일정 삭제
	public int deleteSchedule(SqlSessionTemplate sqlSession, String scheduleNo) {
		return sqlSession.update("scheduleMapper.deleteSchedule", scheduleNo);
	}
}
