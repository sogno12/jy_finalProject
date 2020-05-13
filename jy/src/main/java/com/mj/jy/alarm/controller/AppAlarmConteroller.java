package com.mj.jy.alarm.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.mj.jy.alarm.model.service.AppAlarmService;
import com.mj.jy.common.model.ResponseStatus;
import com.mj.jy.common.model.Result;
import com.mj.jy.member.model.vo.MemberDto;

@RestController
public class AppAlarmConteroller {
	
	private AppAlarmService appAlarmService;
	
	public AppAlarmConteroller(AppAlarmService appAlarmService) {
		this.appAlarmService = appAlarmService;
	}
	
	@GetMapping("readAlarms.do")
	public ResponseEntity readAlarms(@SessionAttribute("loginUser") MemberDto loginUser) {
		// System.out.println("ddd");
		
		// 1. 사용자의 EmpNo 가져오기
			int memberNo = loginUser.getMemberNo();
		// 2. EmpNo에 따른 6가지 각각의 알림갯수
			String eachAlarms = appAlarmService.eachAppAlarm(memberNo);
			String[] eachAlarm = eachAlarms.split(",");
			
			String text = "";
			
			if(eachAlarm != null && eachAlarm.length == 7) {
				String type = eachAlarm[0];
				String typeOne = eachAlarm[1];
				String typeTwo = eachAlarm[2];
				String typeThree = eachAlarm[3];
				String typeFour = eachAlarm[4];
				String typeFive = eachAlarm[5];
				String typeSix = eachAlarm[6];
				
				text += "<a href='#' class='link border-top'><div class='d-flex no-block align-items-center p-10'><span class='btn btn-success btn-circle'><i class='ti-calendar'></i></span><div class='m-l-10'><h5 class='m-b-0'>회의실</h5><span class='mail-desc'>"+typeOne+"개의 신규알람</span></div></div></a>";
				text += "<a href='#' class='link border-top'><div class='d-flex no-block align-items-center p-10'><span class='btn btn-success btn-circle'><i class='ti-calendar'></i></span><div class='m-l-10'><h5 class='m-b-0'>명함</h5><span class='mail-desc'>"+typeTwo+"개의 신규알람</span></div></div></a>";
				text += "<a href='#' class='link border-top'><div class='d-flex no-block align-items-center p-10'><span class='btn btn-success btn-circle'><i class='ti-calendar'></i></span><div class='m-l-10'><h5 class='m-b-0'>카페</h5><span class='mail-desc'>"+typeThree+"개의 신규알람</span></div></div></a>";
				text += "<a href='#' class='link border-top'><div class='d-flex no-block align-items-center p-10'><span class='btn btn-success btn-circle'><i class='ti-calendar'></i></span><div class='m-l-10'><h5 class='m-b-0'>쪽지</h5><span class='mail-desc'>"+typeFour+"개의 신규알람</span></div></div></a>";
				text += "<a href='sendAppBox.box' class='link border-top'><div class='d-flex no-block align-items-center p-10'><span class='btn btn-success btn-circle'><i class='ti-calendar'></i></span><div class='m-l-10'><h5 class='m-b-0'>결재변경</h5><span class='mail-desc'>"+typeFive+"개의 신규알람</span></div></div></a>";
				text += "<a href='receiveAppBox.box' class='link border-top'><div class='d-flex no-block align-items-center p-10'><span class='btn btn-success btn-circle'><i class='ti-calendar'></i></span><div class='m-l-10'><h5 class='m-b-0'>대기결재</h5><span class='mail-desc'>"+typeSix+"개의 신규알람</span></div></div></a>";
			}
			
			Result response = new Result(ResponseStatus.SUCCESS, text);
			
		return ResponseEntity.ok(response);
	}

}
