package com.mj.jy.approval.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.mj.jy.alarm.model.service.AppAlarmService;
import com.mj.jy.appBox.model.vo.DisbursementDto;
import com.mj.jy.appBox.model.vo.ReportDto;
import com.mj.jy.approval.model.service.ApprovalService;
import com.mj.jy.approval.model.vo.SuperApprovalDto;
import com.mj.jy.attachment.model.vo.Attachment;
import com.mj.jy.disbursement.model.vo.DisContent;
import com.mj.jy.disbursement.model.vo.DisContentCreateDto;
import com.mj.jy.disbursement.model.vo.Disbursement;
import com.mj.jy.member.model.vo.MemberDto;
import com.mj.jy.report.model.vo.Report;

@Controller
public class ApprovalController {
	
	private ApprovalService approvalService;
	private AppAlarmService appAlarmService;
	
	public ApprovalController(ApprovalService approvalService, AppAlarmService appAlarmService) {
		this.approvalService = approvalService;
		this.appAlarmService = appAlarmService;
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
			@RequestParam(value="uploadFile", required=false) MultipartFile file, HttpServletRequest request,
			HttpSession session) {
		
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
		
		int appResult = approvalService.enrollReport(report, new Attachment(originName, changeName, folderNo), superArray);
		
		if(appResult> 0) {
			session.setAttribute("appMsg", "보고서 등록 성공!");
			// 보고서 결재요청 알람 등록 --> supervisor
			appAlarmService.insertAppAlarm(loginUser.getMemberNo(), Integer.parseInt(superArray[superArray.length-1]), "5");
			// 보고서 등록 알람 -> 웹소켓  (알람업뎃+알람표시)
			appAlarmService.countAppAlarm(Integer.parseInt(superArray[superArray.length-1]));
			appAlarmService.noticeAppAlarm(Integer.parseInt(superArray[superArray.length-1]), "5");
		}else {
			session.setAttribute("appMsg", "보고서 등록 실패");
		}
		
		//System.out.println(session.getAttribute("appMsg"));
		
		return "redirect:sendAppBox.box";
	}
	
	
	@PostMapping("enrollDis.app")
	public String enrollDisbursement(@SessionAttribute("loginUser") MemberDto loginUser, Model model, Disbursement disbursement,
			String[] superArray, @RequestParam(value="uploadFile", required=false) MultipartFile file, HttpServletRequest request,
			DisContentCreateDto disContentCreateDto,
			HttpSession session) {
		
		List<DisContent> disContents = disContentCreateDto.toEtities();
		
		//System.out.println("disContents: "+disContents);
		
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
		
		// System.out.println("disbursement: "+disbursement);
		// System.out.println("originName: "+originName);
		// System.out.println("changeName: "+changeName);
		
		int appResult = approvalService.enrollDisbursement(disbursement, new Attachment(originName, changeName, folderNo), superArray, disContents);
		
		if(appResult> 0) {
			session.setAttribute("appMsg", "결재서 등록 완료");
			// 결재서 결재요청 알람 등록 --> supervisor
			appAlarmService.insertAppAlarm(loginUser.getMemberNo(), Integer.parseInt(superArray[superArray.length-1]), "5");
			// 결재서 등록 완료 알람 -> 웹소켓
			appAlarmService.countAppAlarm(Integer.parseInt(superArray[superArray.length-1]));
			appAlarmService.noticeAppAlarm(Integer.parseInt(superArray[superArray.length-1]), "5");
		}else {
			session.setAttribute("appMsg", "결재서 등록 실패");
		}
		
		return "redirect:sendAppBox.box";
	}
	
	
	
	@PostMapping("updateReport.app")
	public String updateReport(@SessionAttribute("loginUser") MemberDto loginUser, Model model, ReportDto reportDto, 
			@RequestParam(value="uploadFile", required=false) MultipartFile file, HttpServletRequest request,
			HttpSession session) {
		
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
				
		int updateResult = approvalService.updateReport(reportDto);
		
		if(updateResult> 0) {
			session.setAttribute("appMsg", "보고서 수정 완료");
		}else {
			session.setAttribute("appMsg", "보고서 수정 실패");
		}
		
		return "redirect:sendAppBox.box";
	}
	

	@PostMapping("updateDis.app")
	public String updateDis(@SessionAttribute("loginUser") MemberDto loginUser, Model model, DisbursementDto disbursementDto,
			@RequestParam(value="uploadFile", required=false) MultipartFile file, HttpServletRequest request,
			DisContentCreateDto disContentCreateDto, HttpSession session) {
		
		List<DisContent> disContents = disContentCreateDto.toEtities();
		
		disbursementDto.setUpdateBy(loginUser.getMemberNo());
		// System.out.println("disContents: "+disContents);
		// System.out.println("disbursement: "+disbursementDto);

		//2. 첨부파일 처리
		int folderNo = 3;
				
		// 새로 넘어온 첨부파일이 있을 경우
		if(!file.getOriginalFilename().equals("")) {
			
			// 기존 첨부파일은 삭제
			if(disbursementDto.getUpdateName() != null) {
				deleteFile(disbursementDto.getUpdateName(), request, folderNo);
			}
			
			// 새 첨부파일 업로드
			disbursementDto.setUpdateName(saveFile(file, request, folderNo));
		}
		
		//3. 파일 수정하기
		int updateDis = approvalService.updateDis(disbursementDto, disContents);
		
		if(updateDis > 0) {
			session.setAttribute("appMsg", "결재서 수정 완료");
		}else {
			session.setAttribute("appMsg", "결재서 수정 실패");
		}
		
		return "redirect:sendAppBox.box";
	}
	
	
	@GetMapping("goApproveReport.app")
	public String approvalReport(@SessionAttribute("loginUser") MemberDto loginUser, int no, int selectNo,
			HttpSession session) {
	
		int appResult = approvalService.approvalReport(new SuperApprovalDto("Report", loginUser.getMemberNo(), no, selectNo));
		
		if(appResult> 0) {
			session.setAttribute("appMsg", "결재상태 변경 완료");
			// 결재 작성자에게 알림
			appAlarmService.countAppAlarm(approvalService.getOneReport(no).getCreateBy());
			appAlarmService.noticeAppAlarm(approvalService.getOneReport(no).getCreateBy(), "6");
		}else {
			session.setAttribute("appMsg", "결재상태 변경 실패");
		}
		
		return "redirect:endReceiveAppBox.box";
	}
	
	@GetMapping("goApproveDis.app")
	public String approvalDis(@SessionAttribute("loginUser") MemberDto loginUser, int no, int selectNo,
			HttpSession session) {
	
		int appResult = approvalService.approvalDis(new SuperApprovalDto("Disbursement", loginUser.getMemberNo(), no, selectNo));
		
		if(appResult> 0) {
			session.setAttribute("appMsg", "결재상태 변경 완료");
			// 결재 작성자에게 알림
			appAlarmService.countAppAlarm(approvalService.getOneDis(no).getCreateBy());
			appAlarmService.noticeAppAlarm(approvalService.getOneDis(no).getCreateBy(), "6");
		}else {
			session.setAttribute("appMsg", "결재상태 변경 실패");
		}
		
		return "redirect:endReceiveAppBox.box";
	}
	
	
	/* Delete : 파일 삭제부 */
	
	@PostMapping("deleteDis.app")
	public String deleteDis(@SessionAttribute("loginUser") MemberDto loginUser, DisbursementDto disbursementDto, HttpServletRequest request,
			HttpSession session) {
		
		// 0. loginUser memberNo 과 Dis createBy가 일치하는지 확인
		if( loginUser.getMemberNo() != disbursementDto.getCreateBy() ) {
			session.setAttribute("appMsg", "삭제 실패. 작성자와 삭제요청자가 다릅니다");
			return "redirect:appBox.box";
		}
		
		//1. 첨부파일이 있었을 경우 삭제
		if(disbursementDto.getUpdateName() != null) { 
			int folderNo = 2;
			deleteFile(disbursementDto.getUpdateName(), request, folderNo);
		}
		
		//2. Dis approval = 4 로 수정
		int deleteResult = approvalService.deleteDis(disbursementDto.getDisbursementNo());
		
		if(deleteResult> 0) {
			session.setAttribute("appMsg", "결재서 삭제 완료");
		}else {
			session.setAttribute("appMsg", "결재서 삭제 실패");
		}
		
		return "redirect:sendAppBox.box";
	}
	
	@PostMapping("deleteReport.app")
	public String deleteDis(@SessionAttribute("loginUser") MemberDto loginUser, ReportDto reportDto, HttpServletRequest request,
			HttpSession session) {
		
		//0. loginUser memberNo 와 reportDto createBy가 일치하는지 확인
		if( loginUser.getMemberNo() != reportDto.getCreateBy() ) {
			session.setAttribute("appMsg", "삭제 실패. 작성자와 삭제요청자가 다릅니다");
			return "redirect:appBox.box";
		}
		
		//1. 첨부파일이 있었을 경우 삭제
		if(reportDto.getUpdateName() != null) {
			int folderNo = 2;
			deleteFile(reportDto.getUpdateName(), request, folderNo);
		}
		
		//2. Report approval = 4 로 수정
		int deleteResult = approvalService.deleteReport(reportDto.getReportNo());
		
		if(deleteResult> 0) {
			session.setAttribute("appMsg", "보고서 삭제 완료");
		}else {
			session.setAttribute("appMsg", "보고서 삭제 실패");
		}
		
		
		return "redirect:sendAppBox.box";
	}
	

	/* 첨부파일 처리부 */
	
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
	
	
}
