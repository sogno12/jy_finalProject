package com.mj.jy.schedule.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.jy.schedule.model.service.ScheduleService;
import com.mj.jy.schedule.model.vo.ScheduleDto;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService scService;
	
	/*
	 * @RequestMapping("schedule.sc") public String goSchedule() {
	 * 
	 * //ArrayList<TodoList> todoList = new scService.selectTodoList();
	 * 
	 * return "schedule/scheduleView"; }
	 */
	
	@RequestMapping("calendar.sc")
	public String goCalendar() {
		
		//ArrayList<TodoList> todoList = new scService.selectTodoList();
		
		return "schedule/calendarView";
	}
	
	
	@RequestMapping("insert.sc")
	public String insertSchedule(ScheduleDto eventData) {
		
		if(eventData.getAllDay().equals("false")) {
			eventData.setAllDay("N");
		} else {
			eventData.setAllDay("Y");
		}

		int result = scService.insertSchedule(eventData);
		
		if(result > 0) {
			
		} else {
			
		}
		
		return "";
	}

}
