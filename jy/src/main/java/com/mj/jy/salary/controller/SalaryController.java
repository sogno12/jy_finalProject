package com.mj.jy.salary.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.jy.salary.model.service.SalaryService;
import com.mj.jy.salary.model.vo.SalaryDto;


@Controller
public class SalaryController {
	
	@Autowired
	private SalaryService saService;

	// 급여 리스트 조회
	@RequestMapping("salaryList.sa")
	public String selectSalaryList(Model model) {
		
		ArrayList<SalaryDto> list = saService.selectSalaryList();
		
		model.addAttribute("list", list);
		
		return "salary/salaryListView";
	}
	
	// 급여 상세 정보 조회
	@RequestMapping("select.sa")
	public String selectSalary(int salaryNo, Model model) {
		
		// System.out.println(salaryNo);
		SalaryDto sa = saService.selectSalary(salaryNo);
		
		model.addAttribute("sa", sa);
		
		return "salary/salaryDetailView";
	}
}
