package com.mj.jy.circular.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.mj.jy.circular.model.service.CircularService;
import com.mj.jy.member.model.vo.MemberDto;
import com.mj.jy.reading.model.vo.Reading;

@Controller
public class CircularController {
	
	private final CircularService cirService;
	
	public CircularController(CircularService cirService) {
		this.cirService = cirService;
	}

	// 방법 3가지
	
	// 1. 필드 인젝션  
	// @Autowired - 스프링 애노테이션	, @Inject - 자바표준 
	// private CircularService cirService;
	// 2. Setter 인젝션
	/*
	 	@Autowired	
		public void setCirService(CircularService cirService) {
			this.cirService = cirService;
		}
	 */
	// 3. 생성자 인젝션
	// 스프링 4.3 버전부터 해당 클래스에서 생성자가 1개있고, 생성자로 들어오는 파라미터 객체가 빈으로 등록되어있으면 @Autowired 생략가능
	/*
	   	생성자를 통한 주입이 스프링 권장 방식
	 	public CircularController(CircularService cirService) {
			this.cirService = cirService;
		}
		
		스프링: 스프링(스프링 레거시, 스프링MVC), 스프링 부트 (스프링을 좀더 편하게 쓰기위함 [자동설정 지원])
		1. 빈 생성을 보장해줌 (좀 더 안전한 방법)
		2. 순환참조 관계 에러 알려줌
		
		MemberService -> CircularService
		CircularService -> MemberService
	 */
	
		
	// TODO 세션체크 필터 있어야함
	@GetMapping("/listView.cir")
//	@RequestMapping(value = "/listView.cir", method = RequestMethod.GET)
	public String cirListView(@SessionAttribute("loginUser") MemberDto loginUser,
								Model model) {
		
		//Get userInfo
		
		//Read All Circular list by Member's departmemtNo
		model.addAttribute("list", cirService.cirAllList(loginUser.getDepartmentNo()));
		return "circular/circularListView";
	}

	@GetMapping("/selectOne.cir")
	public String cirOneView(@SessionAttribute("loginUser") MemberDto loginUser, Model model, int circularNo) {
		
		//Get userInfo
		
		// Reading Setting
		Reading reading = new Reading(circularNo, loginUser.getMemberNo());
		
		//Check Read or not
		//if not Read before, insert ReadInfo
		int whetherResult = cirService.readOrNot(reading);
		
		if(whetherResult == 0) { //first Read
			cirService.insertReadInfo(reading);
		}
		
		List<Reading> notReadingList= cirService.notReadingList(circularNo);
		
		//One Circular Info
		//One Circular Reader List
		model.addAttribute("cirOneInfo", cirService.cirOneInfo(circularNo))
		  .addAttribute("cirReadingList", cirService.cirReadingList(circularNo))
		  .addAttribute("notReadingList", cirService.notReadingList(circularNo));
		
		return "circular/circularOneView";
	}
}
