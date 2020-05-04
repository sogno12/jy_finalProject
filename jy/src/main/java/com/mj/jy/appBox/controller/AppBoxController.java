package com.mj.jy.appBox.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.mj.jy.appBox.model.service.AppBoxService;
import com.mj.jy.appBox.model.vo.SentAppBoxDto;
import com.mj.jy.approval.model.service.ApprovalService;
import com.mj.jy.member.model.vo.MemberDto;

@Controller
public class AppBoxController {
	
	private AppBoxService appBoxService;
	private ApprovalService approvalService;
	
	public AppBoxController(AppBoxService appBoxService, ApprovalService approvalService) {
		this.appBoxService = appBoxService;
		this.approvalService = approvalService;
	}
	

	@GetMapping("appBox.box")
	public String goAppBox(@SessionAttribute("loginUser") MemberDto loginUser,
			Model model) {
		
		// 보낸결재함
		model.addAttribute("sendAppBox", appBoxService.getSentAppBox(loginUser.getMemberNo()));
		
		// 결재완료함
		model.addAttribute("endSentAppBox", appBoxService.getEndSentAppBox(loginUser.getMemberNo()));
		
		// 승인요청함
		model.addAttribute("receiveAppBox", appBoxService.getReceiveAppBox(loginUser.getMemberNo()));
		
		// 승인완료함
		model.addAttribute("endReceiveAppBox", appBoxService.getEndReceiveAppBox(loginUser.getMemberNo()));

		return "appBox/appBox";
	}
	
	@GetMapping("selectOne.app")
	public String goSelectOne(SentAppBoxDto sentAppBoxDto, Model model) {
	
		String detailView = "";
		
		switch(sentAppBoxDto.getCategoryNo()) {
			case 1: detailView += "appBox/detailVoca";
					// 휴가신청서 정보
					model.addAttribute("oneReport",appBoxService.getOneReport(sentAppBoxDto.getNo()));
					// 휴가 Reason 정보 제공
					model.addAttribute("reasons", approvalService.getReportReasons(sentAppBoxDto.getCategoryNo()));
					// 결재자 정보
					model.addAttribute("supervisers", appBoxService.getSupervisers(sentAppBoxDto.getNo()));
					
					// System.out.println(appBoxService.getOneReport(sentAppBoxDto.getNo()));
					// System.out.println(approvalService.getReportReasons(sentAppBoxDto.getCategoryNo()));
					// System.out.println(appBoxService.getSupervisers(sentAppBoxDto.getNo()));
					
					break;
			case 2: detailView += "appBox/detailReport"; 
					// 보고서 정보
					model.addAttribute("oneReport",appBoxService.getOneReport(sentAppBoxDto.getNo()));
					// 보고서 Reason 정보 제공
					model.addAttribute("reasons", approvalService.getReportReasons(sentAppBoxDto.getCategoryNo()));
					// 결재자 정보
					model.addAttribute("supervisers", appBoxService.getSupervisers(sentAppBoxDto.getNo()));

					// System.out.println(appBoxService.getOneReport(sentAppBoxDto.getNo()));
					// System.out.println(approvalService.getReportReasons(sentAppBoxDto.getCategoryNo()));
					// System.out.println(appBoxService.getSupervisers(sentAppBoxDto.getNo()));
					
					break;
			case 3: detailView += "appBox/detailDis";
					// 결의서 정보
					model.addAttribute("oneDis", appBoxService.getOneDis(sentAppBoxDto.getNo()));
					// 결재자 정보
					model.addAttribute("supervisers", appBoxService.getDisSupervisers(sentAppBoxDto.getNo()));
					// 결의서 내용 정보
					model.addAttribute("contents", appBoxService.getDisContents(sentAppBoxDto.getNo()));
			
					//기안서분류 disType
					model.addAttribute("disType", approvalService.getDisType());
					//지급조건 : terms 화면에서 선택
					//은행분류 : bank 화면에서 선택
					//계정과목 subject
					model.addAttribute("subject", approvalService.getSubject());
					//결제수단 method
					model.addAttribute("method", approvalService.getMethod());
			
					break; //결의서
		}
		
		model.addAttribute("types", appBoxService.getApprovalTypes());
		// System.out.println(appBoxService.getApprovalTypes());
		
		return detailView;
	}
	
	@GetMapping("/goUpdateReport.box")
	public String goUpdateReportForm(SentAppBoxDto sentAppBoxDto, Model model) {
		// 보고서 정보
		model.addAttribute("oneReport",appBoxService.getOneReport(sentAppBoxDto.getNo()));
		// 보고서 Reason 정보 제공
		model.addAttribute("reasons", approvalService.getReportReasons(sentAppBoxDto.getCategoryNo()));
		// 결재자 정보
		model.addAttribute("supervisers", appBoxService.getSupervisers(sentAppBoxDto.getNo()));
		
		return "appBox/updateReport";
	}
	
	@GetMapping("/goUpdateVaca.box")
	public String goUpdateVacaForm(SentAppBoxDto sentAppBoxDto, Model model) {
		// 휴가신청서 정보
		model.addAttribute("oneReport",appBoxService.getOneReport(sentAppBoxDto.getNo()));
		// 휴가 Reason 정보 제공
		model.addAttribute("reasons", approvalService.getReportReasons(sentAppBoxDto.getCategoryNo()));
		// 결재자 정보
		model.addAttribute("supervisers", appBoxService.getSupervisers(sentAppBoxDto.getNo()));
		
		return "appBox/updateVoca";
	}
	
	@GetMapping("/goUpdateDis.box")
	public String goUpdateDisForm(SentAppBoxDto sentAppBoxDto, Model model) {
		// 결의서 정보
		model.addAttribute("oneDis", appBoxService.getOneDis(sentAppBoxDto.getNo()));
		// 결재자 정보
		model.addAttribute("supervisers", appBoxService.getDisSupervisers(sentAppBoxDto.getNo()));
		// 결의서 내용 정보
		model.addAttribute("contents", appBoxService.getDisContents(sentAppBoxDto.getNo()));

		//기안서분류 disType
		model.addAttribute("disType", approvalService.getDisType());
		//지급조건 : terms 화면에서 선택
		//은행분류 : bank 화면에서 선택
		//계정과목 subject
		model.addAttribute("subject", approvalService.getSubject());
		//결제수단 method
		model.addAttribute("method", approvalService.getMethod());
		
		return "appBox/updateDis";
	}
}
