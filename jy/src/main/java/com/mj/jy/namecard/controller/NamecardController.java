package com.mj.jy.namecard.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.mj.jy.alarm.model.service.AppAlarmService;
import com.mj.jy.businessRoom.model.service.BusinessRoomService;
import com.mj.jy.businessRoom.model.vo.BusinessDTO;
import com.mj.jy.namecard.model.service.NamecardService;
import com.mj.jy.namecard.model.vo.Namecard;
import com.mj.jy.namecard.model.vo.PageInfo;
import com.mj.jy.namecard.model.vo.Pagination;

@Controller
public class NamecardController {

	@Autowired
	private NamecardService nService;
	
	@Autowired
	private BusinessRoomService bService;
	
	@Autowired
	private AppAlarmService appAlarmService;

	/**
	 * 명함신청 입력폼controller
	 * 
	 * @return
	 */
	@RequestMapping("namecardForm.nc")
	public String namecardForm() {
		return "convenience/namecard/namecardForm";
	}

	/**
	 * 명함신청 insert controller
	 * 
	 * @param n
	 * @param model
	 * @return
	 */
	@RequestMapping("insertNamecard.nc")
	public String insertNamecard(Namecard n, Model model) {

		// System.out.println(n);

		int namecardNo = nService.insertNamecard(n);

		// System.out.println(result);

		if (namecardNo != 0) {
			model.addAttribute("msg", "명함신청이 완료되었습니다.");
			//알림 insert
			appAlarmService.insertAppAlarm(namecardNo, 1, "2");
			
			// 알람읽기 + 띄우기
			appAlarmService.sendAlarm(1, "2");
			
			return "convenience/namecard/namecardSuccess";
		} else {
			model.addAttribute("msg", "명함을 다시 신청해주십시오.");
			return "common/errorPage";
		}

	}

	/**
	 * 예약메인view
	 * 
	 * @return
	 */
	@RequestMapping("reservationList.nc")
	public String namecardSelectList(int memberNo,Model model,
			@RequestParam(value = "bcurrentPage", required = false, defaultValue = "1") int bcurrentPage,
			@RequestParam(value = "ncurrentPage", required = false, defaultValue = "1") int ncurrentPage) {

		int broomListCount = nService.getBroomListCountMem(memberNo);
		int nameListCount = nService.getNameListCountMem(memberNo);
		
	//	System.out.println(memberNo);
		
	
	    PageInfo pb = Pagination.getPageInfo(broomListCount, bcurrentPage, 10, 5);
	     PageInfo pn = Pagination.getPageInfo(nameListCount, ncurrentPage, 10, 5);
		  

	     ArrayList<BusinessDTO> blist = nService.selectBroomListMem(pb, memberNo);
		  ArrayList<Namecard> nlist = nService.selectNameListMem(pn, memberNo);
		  
		  

	     ArrayList<BusinessDTO> blist = nService.selectBroomList(pb);
		  ArrayList<Namecard> nlist = nService.selectNameList(pn);
		 
		

		  model.addAttribute("pb",pb); 
		  model.addAttribute("pn",pn);
		  model.addAttribute("nlist", nlist);
		  model.addAttribute("blist", blist);
		 
		//  System.out.println(nlist);
		return "convenience/reservation/reservationList";
	}
	
	@RequestMapping(value="nameUpdate.nc")
	public void nameUpdate(int namecardNo, HttpServletResponse response) throws JsonIOException, IOException {
		
		 response.setContentType("application/json; charset=utf-8");
		
		int result = nService.nameUpdate(namecardNo);
	
		String result2 = "";
		
		if(result > 0) {
			result2 = "1";
			nService.updateNameAlarm(namecardNo);
		} else {
			result2 = "0";
		}
		
		 new Gson().toJson(result2, response.getWriter());
		
	}

}
