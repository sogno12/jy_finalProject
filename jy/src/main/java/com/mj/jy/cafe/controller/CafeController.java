package com.mj.jy.cafe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CafeController {
	
	/** 카페테리아 메인 view
	 * @return
	 */
	@RequestMapping("cafeTeria.ca")
	public String cafeList() {
		return "convenience/cafe/cafeteria";
	}
	

}
