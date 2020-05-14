package com.mj.jy.schedule.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.mj.jy.schedule.model.service.ScheduleService;
import com.mj.jy.schedule.model.vo.Schedule;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService scService;
	
	@RequestMapping("calendar.sc")
	public String goCalendar() {
		
		return "schedule/calendarView";
	}
	
	// 일정 추가
	@RequestMapping("insert.sc")
	public String insertSchedule(Schedule eventData) {
		
		int result = scService.insertSchedule(eventData);
		
		if(result > 0) {} else {}
		
		return "";
	}
	
	// 일정 조회
	@RequestMapping(value="select.sc")
	public void selectSchedule(int memberNo, HttpServletResponse response) throws JsonIOException, IOException {
		
		ArrayList<Schedule> list = scService.selectSchedule(memberNo);
		
		response.setContentType("application/json; charset=utf-8");

		new GsonBuilder().setDateFormat("yyyy-MM-dd'T'HH:mm:ss").create().toJson(list, response.getWriter());
	}
	
	// 일정 드래그앤드롭
	@RequestMapping("drag.sc")
	public String dragSchedule(String scheduleNo, String startDate, String endDate) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("scheduleNo", scheduleNo);
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		
//		System.out.println("drag : " + map);
		int result = scService.dragSchedule(map);
		
		if(result > 0) {} else {}
		
		return "";
	}
	
	// 일정 리사이즈
	@RequestMapping("resize.sc")
	public String resizeSchedule(String scheduleNo, String startDate, String endDate) {
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("scheduleNo", scheduleNo);
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		
//		 System.out.println("resize : " + map);
		int result = scService.dragSchedule(map);
		
		if(result > 0) {} else {}
		
		return "";
	}
	
	// 일정 수정
	@RequestMapping("update.sc")
	public String updateSchedule(Schedule event) {

		// System.out.println(event);
		
		int result = scService.updateSchedule(event);
		
		if(result > 0) {} else {}
		
		return "";
	}
	
	// 일정 삭제
	@RequestMapping("delete.sc")
	public String deleteSchedule(String scheduleNo) {
		
		// System.out.println(scheduleNo);
		
		int result = scService.deleteSchedule(scheduleNo);
		
		if(result > 0) {} else {}
		
		return "";
	}
	
}
