package com.mj.jy.businessRoom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.jy.businessRoom.model.service.BusinessRoomService;

@Controller
public class BusinessRoomController {

	@Autowired
	private BusinessRoomService bService;
	
	/** 회의실예약 입력폼 controller
	 * @return
	 */
	@RequestMapping("businessForm.br")
	public String BusinessRoomForm() {
		
		return "convenience/business/businessForm";
	}
}
