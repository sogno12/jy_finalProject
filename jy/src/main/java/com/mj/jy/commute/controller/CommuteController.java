package com.mj.jy.commute.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import com.mj.jy.commute.model.service.CommuteService;
import com.mj.jy.commute.model.vo.CommuteDto;
import com.mj.jy.commute.model.vo.CommuteViewDto;
import com.mj.jy.member.model.vo.MemberDto;

@Controller
public class CommuteController {
	
	@Autowired
	private CommuteService cService;
	
	@RequestMapping("commuteList.co")
	public String selectCommuteList(Model model) {
		
		ArrayList<CommuteDto> list = cService.selectCommuteList();
		
		model.addAttribute("list", list);
		return "commute/commuteListView";
	}
	

	@ResponseBody
	@RequestMapping(value="clockIn.co",produces="application/json; charset=utf-8")
	public String insertCommute(CommuteDto c, HttpSession session, Model model) {
		
		int memberNo = ((MemberDto)session.getAttribute("loginUser")).getMemberNo();
	
		c.setMemberNo(memberNo);
		
		int result = cService.insertCommute(c);
		
		return String.valueOf(result);
		
		
	}
	
	@ResponseBody
	@RequestMapping(value="selectClock.co",produces="application/json; charset=utf-8")
	public String selectClock(String empNo) {
		
		CommuteViewDto c = cService.selectClock(empNo);
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
		return gson.toJson(c);
	}
	
	@ResponseBody
	@RequestMapping(value="clockOut.co",produces="application/json; charset=utf-8")
	public String insertquit(CommuteDto c, HttpSession session, Model model) {
		
		
		
		int memberNo = ((MemberDto)session.getAttribute("loginUser")).getMemberNo();
	
		c.setMemberNo(memberNo);
		
		int result = cService.insertquit(c);
		
		return String.valueOf(result);
		
		
	}
	

}
