package com.mj.jy.schedule.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.jy.schedule.model.service.ScheduleService;
import com.mj.jy.todolist.model.vo.TodoList;

@Controller
public class ScheduleController {
	
	@Autowired
	private ScheduleService sService;
	
	@RequestMapping("schedule.sc")
	public String goSchedule() {
		
		//ArrayList<TodoList> todoList = new scService.selectTodoList();
		
		return "schedule/scheduleView";
	}

}
