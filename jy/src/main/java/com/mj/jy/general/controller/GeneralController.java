package com.mj.jy.general.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.mj.jy.businessInfo.model.service.BusinessInfoService;
import com.mj.jy.businessRoom.model.service.BusinessRoomService;
import com.mj.jy.businessRoom.model.vo.BusinessDTO;
import com.mj.jy.businessRoom.model.vo.BusinessInfo;
import com.mj.jy.general.model.service.GeneralService;
import com.mj.jy.general.model.vo.NamecardDTO;
import com.mj.jy.namecard.model.service.NamecardService;
import com.mj.jy.namecard.model.vo.Namecard;
import com.mj.jy.namecard.model.vo.PageInfo;
import com.mj.jy.namecard.model.vo.Pagination;
@Controller
public class GeneralController {
	
	@Autowired
	private NamecardService nService;
	
	@Autowired
	private BusinessRoomService bService;
	
	@Autowired
	private BusinessInfoService biService;
	
	@Autowired
	private GeneralService gService;
	
	
	
	/** 총무팀 예약메인 view
	 * @return
	 */
	@RequestMapping("generalList.ge")
	public String selectGeList(Model model, 
			@RequestParam(value="bcurrentPage", required=false, defaultValue="1") int bcurrentPage,
			@RequestParam(value="ncurrentPage", required=false, defaultValue="1") int ncurrentPage) {
		
		int broomListCount = nService.getBroomListCount();
		int nameListCount = nService.getNameListCount();
		
		PageInfo pn = Pagination.getPageInfo(nameListCount, ncurrentPage, 10, 5);
		PageInfo pb = Pagination.getPageInfo(broomListCount, bcurrentPage, 10, 5);
		
		ArrayList<Namecard> nlist = nService.selectNameList(pn);
		ArrayList<BusinessDTO> blist = nService.selectBroomList(pb);
		
		model.addAttribute("pb", pb);
		model.addAttribute("pn", pn);
		model.addAttribute("nlist", nlist);
		model.addAttribute("blist", blist);
		
		return "general/generalList";
	}
	
	@ResponseBody
	@RequestMapping(value="generalDetailList.ge", produces="application/json; charset=utf-8")
	public String generalDetailList(int roomNo, Model model) {
		
		BusinessInfo selectbDetailList = biService.selectbDetailList(roomNo);
		
		return new Gson().toJson(selectbDetailList);
	}
	
	@ResponseBody
	@RequestMapping(value="namecardDetail.na", produces="application/json; charset=utf-8")
	public String namecardDetail(int namecardNo, Model model) {
		
		NamecardDTO selectncDetailList = gService.selectncDetail(namecardNo);
		
		System.out.println(namecardNo);
		System.out.println(selectncDetailList);
		return new Gson().toJson(selectncDetailList);
		
	}
	
	

}
