package com.mj.jy.alarm.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mj.jy.alarm.model.dao.AppAlarmDao;
import com.mj.jy.alarm.model.vo.Alarm;
import com.mj.jy.alarm.model.vo.CountTypeDto;
import com.mj.jy.socketHandler.model.vo.EchoHandler;

@Service
public class AppAlarmServiceImpl implements AppAlarmService {

	private AppAlarmDao appAlramDao;
	private EchoHandler handler;		//웹소켓핸들러
	
	public AppAlarmServiceImpl(AppAlarmDao appAlramDao, EchoHandler handler) {
		this.appAlramDao = appAlramDao;
		this.handler = handler;
	}
	
	@Override
	public String countAppAlarm(int memberNo) {
		
		// H1. 전체 알람 갯수 치환해주기 (navi-ajax) - protocol: cmd, 받는사람
		String cmd = "0";
		String recieverEmpNo = appAlramDao.findEmpNo(memberNo);
		
		String countAlarm = cmd+","+recieverEmpNo;
		
		handler.countAppAlarm(countAlarm);
		
		
		return recieverEmpNo;
	}
	

	@Override
	public void noticeAppAlarm(int memberNo, String type) {
		// H2. 상황별 알림 보내기 (+타입 붙여서)
		String cmd = type;
		String recieverEmpNo = appAlramDao.findEmpNo(memberNo);
		
		String noticeAlarm = cmd+","+recieverEmpNo;
		
		handler.noticeAppAlarm(noticeAlarm);
	}

	
	@Override
	public String eachAppAlarm(int memberNo) {
		
		// S1. 각가의 알람들의 갯수 구하기 (총 6개의 숫자)
		List<CountTypeDto> eachAppAlarm = appAlramDao.eachAppAlarm(memberNo);
		String eachAlarms = "count";
		
		for(int i = 1; i<=6; i++) {
			boolean search = false;
			for(CountTypeDto ctd : eachAppAlarm) {
				if(ctd.getType() == i) {
					eachAlarms += ","+ctd.getCount();
					search = true;
					break;
				}
			}
			if(search == false) {
				eachAlarms += ",0";
			}
		}
		return eachAlarms;
	}

	@Override
	public void readSendAppAlarm(int memberNo) {
		// S2. 보낸결재함 들어갈 경우, 5번 알림 모두 Y처리
		appAlramDao.readSendAppAlarm(memberNo);
	}

	@Override
	public void readRecieveAppAlarm(int memberNo) {
		// S3. 받은결재함 들어갈 경우, 6번 알림 모두 Y처리
		appAlramDao.readRecieveAppAlarm(memberNo);
	}

	@Override
	public void insertAppAlarm(int senderNo, int recieverNo, String type) {
		Alarm alarm = new Alarm(senderNo, type, recieverNo);
		appAlramDao.insertAppAlarm(alarm);
	}

	@Override
	public void sendAlarm(int memberNo, String msg) {
		/* msg */
		/* 1.회의실, 2.명함, 4.쪽지, 5.결재상태변경, 6.결재요청 */
		countAppAlarm(memberNo);
		noticeAppAlarm(memberNo, msg);
	}
	
}
