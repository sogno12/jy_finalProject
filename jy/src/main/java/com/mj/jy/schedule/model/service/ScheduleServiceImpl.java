package com.mj.jy.schedule.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.schedule.model.dao.ScheduleDao;
import com.mj.jy.schedule.model.vo.ScheduleDto;

@Service("scService")
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private ScheduleDao scDao;
	
	@Override
	public int insertSchedule(ScheduleDto eventData) {
		return scDao.insertSchedule(sqlSession, eventData);
	}
}
