package com.mj.jy.alarm.model.dao;

import java.util.List;

import com.mj.jy.alarm.model.vo.Alarm;
import com.mj.jy.alarm.model.vo.CountTypeDto;

public interface AppAlarmDao {

	int findEmpNo(int memberNo);
	int countAppAlarm(int memberNo);
	List<CountTypeDto> eachAppAlarm(int memberNo);
	void readSendAppAlarm(int memberNo);
	void readRecieveAppAlarm(int memberNo);
	void insertAppAlarm(Alarm alarm);

	
}
