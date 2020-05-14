package com.mj.jy.schedule.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.mj.jy.schedule.model.vo.Schedule;

public interface ScheduleService {
	
	// 일정 등록
	int insertSchedule(Schedule eventData);
	
	// 일정 조회
	ArrayList<Schedule> selectSchedule(int memberNo);
	
	// 일정 드래그앤드롭
	int dragSchedule(HashMap map);
	
	// 일정 수정
	int updateSchedule(Schedule event);
	
	// 일정 삭제
	int deleteSchedule(String scheduleNo);
}
