package com.mj.jy.general.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.mj.jy.businessInfo.model.service.BusinessInfoService;
import com.mj.jy.businessRoom.model.service.BusinessRoomService;
import com.mj.jy.businessRoom.model.vo.BusinessDTO;
import com.mj.jy.businessRoom.model.vo.BusinessInfo;
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
	
	
	
	/** 총무팀 예약메인 view
	 * @return
	 */
	@RequestMapping("generalList.ge")
	public String selectGeList(Model model, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		
		int nameListCount = nService.getNameListCount();
		
		PageInfo pi = Pagination.getPageInfo(nameListCount, currentPage, 10, 5);
		
		ArrayList<Namecard> nlist = nService.selectNameList(pi);
		
		ArrayList<BusinessDTO> blist = bService.selectBroomList();
		
		model.addAttribute("pi", pi);
		model.addAttribute("nlist", nlist);
		model.addAttribute("blist", blist);
		
		return "general/generalList";
	}
	
	@ResponseBody
	@RequestMapping(value="generalDetailList.ge", produces="application/json; charset=utf-8")
	public String generalDetailList(int roomNo, Model model) {
		
		BusinessInfo selectbDetailList = biService.selectbDetailList(roomNo);
		
		System.out.println(selectbDetailList);
		return new Gson().toJson(selectbDetailList);
	}

}
