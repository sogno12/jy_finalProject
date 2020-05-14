package com.mj.jy.leave.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.mj.jy.leave.model.service.LeaveService;
import com.mj.jy.leave.model.vo.LeaveDto;
import com.mj.jy.leave.model.vo.LeaveListDto;
import com.mj.jy.member.model.vo.MemberDto;
import com.mj.jy.namecard.model.vo.PageInfo;
import com.mj.jy.namecard.model.vo.Pagination;

@Controller
public class LeaveController {
	
	@Autowired
	private LeaveService lService;
	
	// 나의 휴가조회
	@RequestMapping("leave.lv")
	public String selectLeave(HttpSession session, Model model,@RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		int empNo = ((MemberDto)session.getAttribute("loginUser")).getMemberNo();
		
		LeaveDto lv = lService.selectMyLeave(empNo);
		lv.setEmpNo(empNo);
		
		
		ArrayList<LeaveListDto> llist = lService.selectLeaveList(empNo);
		
		
		
		model.addAttribute("lv", lv);
		model.addAttribute("llist", llist);
		
		return "member/vacation";
		
		
	}
	

}
