package com.mj.jy.approval.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.mj.jy.appBox.model.vo.ReportDto;
import com.mj.jy.approval.model.service.ApprovalService;
import com.mj.jy.approval.model.vo.SuperApprovalDto;
import com.mj.jy.attachment.model.vo.Attachment;
import com.mj.jy.disbursement.model.vo.DisContent;
import com.mj.jy.disbursement.model.vo.Disbursement;
import com.mj.jy.member.model.vo.MemberDto;
import com.mj.jy.report.model.vo.Report;

@Controller
public class ApprovalController {
	
	private ApprovalService approvalService;
	
	public ApprovalController(ApprovalService approvalService) {
		this.approvalService = approvalService;
	}


	@GetMapping("/form.app")
	public String goAppForm(@SessionAttribute("loginUser") MemberDto loginUser, Model model) {
		
		//모든 사원 정보
		model.addAttribute("allMember", approvalService.getAllMemberList());
		//Get userInfo
		model.addAttribute("loginUser", loginUser);

		
		/* REPORT*/
	
		
		/* Disbursement*/
		
		//기안서분류 disType
		model.addAttribute("disType", approvalService.getDisType());
		//지급조건 : terms 화면에서 선택
		//은행분류 : bank 화면에서 선택
		//계정과목 subject
		model.addAttribute("subject", approvalService.getSubject());
		//결제수단 method
		model.addAttribute("method", approvalService.getMethod());
		
		return "appForm/appForm";
	}
	
	@PostMapping("/enrollVa.app")
	public String enrollReport(@SessionAttribute("loginUser") MemberDto loginUser, Model model, Report report, String[] superArray,
			@RequestParam(value="uploadFile", required=false) MultipartFile file, HttpServletRequest request) {
		
		/* Report 처리 */
		report.createBy(loginUser.getMemberNo());
		
		/* 첨부파일 처리*/
		String originName = null;
		String changeName = null;
		int folderNo = 2;
		
		if(!file.getOriginalFilename().equals("")) { //첨부파일이 있는 경우
			
			originName = file.getOriginalFilename();
			changeName = saveFile(file, request, folderNo);
		}
		
		approvalService.enrollReport(report, new Attachment(originName, changeName, folderNo), superArray);
		
		return "redirect:appBox.box";
	}
	
	
	@PostMapping("enrollDis.app")
	public String enrollDisbursement(@SessionAttribute("loginUser") MemberDto loginUser, Model model, Disbursement disbursement,
			String[] superArray, @RequestParam(value="uploadFile", required=false) MultipartFile file, HttpServletRequest request) {
		
		String[] paydate = request.getParameterValues("paydate");
		String[] subjectNo = request.getParameterValues("subjectNo");
		String[] disContent = request.getParameterValues("disContent");
		String[] client = request.getParameterValues("client");
		String[] price = request.getParameterValues("price");
		String[] methodNo = request.getParameterValues("methodNo");
		
		SimpleDateFormat fm = new SimpleDateFormat("MM/dd/yyyy");
		
		List<DisContent> disContents = new ArrayList<>();
		
		for(int i=0; i<paydate.length; i++) {
			if(paydate[i] != "" || !paydate[i].equals("")) {
				try {
					disContents.add(new DisContent(fm.parse(paydate[i]), disContent[i], client[i], 
							Integer.parseInt(price[i]), Integer.parseInt(subjectNo[i]), Integer.parseInt(methodNo[i])));
				} catch (NumberFormatException | ParseException e) {
					e.printStackTrace();
				}
			}
		}
		
		System.out.println("disContents: "+disContents);
		
		/* Disbursement 처리 */
		disbursement.setCreateBy(loginUser.getMemberNo());
	
		/* 첨부파일 처리 */
		String originName = null;
		String changeName = null;
		int folderNo = 3;
		
		if(!file.getOriginalFilename().equals("")) { //첨부파일이 있는 경우
			
			originName = file.getOriginalFilename();
			changeName = saveFile(file, request, folderNo);
		}
		
		System.out.println("disbursement: "+disbursement);
		System.out.println("originName: "+originName);
		System.out.println("changeName: "+changeName);
		
		approvalService.enrollDisbursement(disbursement, new Attachment(originName, changeName, folderNo), superArray, disContents);
		
		
		return "redirect:appBox.box";
	}
	
	
	public String saveFile(MultipartFile file, HttpServletRequest request, int folderNo) {
		String resources = request.getSession().getServletContext().getRealPath("resources");
		String savePath = resources;
		
		switch(folderNo) {
			case 2: savePath += "\\upload_file_report\\"; break;
			case 3: savePath += "\\upload_file_disbursement\\"; break;
		}
				
		String originName = file.getOriginalFilename();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String currentTime = sdf.format(new Date());
		String ext = originName.substring(originName.lastIndexOf("."));
		String changeName = currentTime + ext;
		
		try {
			file.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
	}
	
	@PostMapping("updateReport.app")
	public String updateReport(@SessionAttribute("loginUser") MemberDto loginUser, Model model, ReportDto reportDto, 
			@RequestParam(value="uploadFile", required=false) MultipartFile file, HttpServletRequest request) {
		int folderNo = 2;
		reportDto.setUpdateBy(loginUser.getMemberNo());
				
		// 새로 넘어온 첨부파일이 있을 경우
		if(!file.getOriginalFilename().equals("")) {
			
			// 기존 첨부파일은 삭제
			if(reportDto.getUpdateName() != null) {
				deleteFile(reportDto.getUpdateName(), request, folderNo);
			}
			
			// 새 첨부파일 업로드
			reportDto.setUpdateName(saveFile(file, request, folderNo));
		}
				
		int result = approvalService.updateReport(reportDto);
		//System.out.println(result);
		
		return "redirect:appBox.box";
	}
	
	
	
	public void deleteFile(String fileName, HttpServletRequest request, int folderNo) {
		String resources = request.getSession().getServletContext().getRealPath("resources");
		String savePath = resources;
		
		switch(folderNo) {
			case 2: savePath += "\\upload_file_report\\"; break;
			case 3: savePath += "\\upload_file_disbursement\\"; break;
		}
		File deleteFile = new File(savePath + fileName);
		deleteFile.delete();
	}
	
	
	@GetMapping("goApproveReport.app")
	public String approvalReport(@SessionAttribute("loginUser") MemberDto loginUser, int no, int selectNo) {
	
		int result = approvalService.approvalReport(new SuperApprovalDto("Report", loginUser.getMemberNo(), no, selectNo));
		
		return "redirect:appBox.box";
	}
	
	@GetMapping("goApproveDis.app")
	public String approvalDis(@SessionAttribute("loginUser") MemberDto loginUser, int no, int selectNo) {
	
		int result = approvalService.approvalDis(new SuperApprovalDto("Disbursement", loginUser.getMemberNo(), no, selectNo));
		
		return "redirect:appBox.box";
	}
	
}
