package com.mj.jy.schedule.model.service;

import com.mj.jy.schedule.model.vo.ScheduleDto;

public interface ScheduleService {
	
	// 일정 등록
	int insertSchedule(ScheduleDto eventData);
}
