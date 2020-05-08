package com.mj.jy.schedule.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mj.jy.schedule.model.vo.ScheduleDto;

@Repository("scDao")
public class ScheduleDao {
	
	public int insertSchedule(SqlSessionTemplate sqlSession, ScheduleDto eventData) {
		return sqlSession.insert("scheduleMapper.insertSchedule", eventData);
	}

}
