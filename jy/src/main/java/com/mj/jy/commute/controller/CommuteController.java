package com.mj.jy.commute.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.jy.commute.model.service.CommuteService;
import com.mj.jy.commute.model.vo.CommuteDto;

@Controller
public class CommuteController {
	
	@Autowired
	private CommuteService cService;
	
	@RequestMapping("commuteChart.co")
	public String goChart() {
		return "commute/commuteChart";
	}
	
	@RequestMapping("commuteList.co")
	public String selectCommuteList(Model model) {
		
		ArrayList<CommuteDto> list = cService.selectCommuteList();
		
		model.addAttribute("list", list);
		return "commute/commuteListView";
	}
}
