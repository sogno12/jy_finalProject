package com.mj.jy.schedule.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.jy.member.model.service.MemberService;

@Controller
public class ScheduleController {
	
	@Autowired
	private MemberService mService;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping("schedule.sc")
	public String goSchedule() {
		return "schedule/scheduleView";
	}

}
