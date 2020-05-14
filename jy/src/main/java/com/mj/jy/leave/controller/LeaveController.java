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
		String empNo = ((MemberDto)session.getAttribute("loginUser")).getEmpNo();
		
		LeaveDto lv = lService.selectMyLeave(empNo);
		
		int listCount = lService.getListCount();
		currentPage = 0;
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		ArrayList<LeaveListDto> llist = lService.selectLeaveList(empNo,pi);
		
		lv.setEmpNo(empNo);
		model.addAttribute("lv", lv);
		model.addAttribute("pi", pi);
		model.addAttribute("llist", llist);
		
		return "member/vacation";
		
		
	}
	

}
