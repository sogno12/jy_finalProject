package com.mj.jy.approval.model.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mj.jy.appBox.model.vo.ReportDto;
import com.mj.jy.approval.model.dao.ApprovalDao;
import com.mj.jy.approval.model.vo.SuperApprovalDto;
import com.mj.jy.attachment.model.vo.Attachment;
import com.mj.jy.disbursement.model.vo.DisApp;
import com.mj.jy.disbursement.model.vo.DisContent;
import com.mj.jy.disbursement.model.vo.DisType;
import com.mj.jy.disbursement.model.vo.Disbursement;
import com.mj.jy.disbursement.model.vo.Method;
import com.mj.jy.disbursement.model.vo.Subject;
import com.mj.jy.member.model.vo.AllMemberDto;
import com.mj.jy.report.model.vo.Reason;
import com.mj.jy.report.model.vo.Report;
import com.mj.jy.report.model.vo.ReportApp;

@Service
public class ApprovalServiceImpl implements ApprovalService {

	private final ApprovalDao appDao;
	
	public ApprovalServiceImpl(ApprovalDao appDao) {
		this.appDao = appDao;
	}

	@Override
	public List<Reason> getReportReasons(int typeNo) {
		return appDao.getReportReasons(typeNo);
	}

	// 트랜잭션
	// JDBC 직접 코드
	// 스프링 -> 추상화 AOP 를 사용해 추상화 해놨음
	// 개발자 -> AOP 로 처리를 해도되고, @Transactional 
	// isolation 디비 기본 전략 따라감
	// pro
	// A 
	// B
	// (B -> (A)) 
	// 예외 발생시 롤백 -> RuntimeException 구현 예외들 발생시 
	// SQLException Checked Exception (try-catch)
	// 추상화 -> DataAccessException (RuntimeException) 
	// 오라클, MySQL, ... 디비 종류가 많음
	@Override
	@Transactional
	public void enrollReport(Report report, Attachment attachment, String[] superArray) {
		//첨부파일
		if(attachment.getOriginName() != null) {
			appDao.enrollAttachment(attachment);
			report.setAttachmentNo(attachment.getAttachmentNo());
		}
		
		//리포트 추가
		appDao.enrollReport(report);
		report.setReportNo(report.getReportNo());
		
		
		//리포트-super연결
		for(int i=0; i<superArray.length; i++) {
			ReportApp reportApp = new ReportApp(report.getReportNo(), Integer.parseInt(superArray[i]), superArray.length-i);
			appDao.enrollReportSuper(reportApp);
		}
	}

	@Override
	public List<AllMemberDto> getAllMemberList() {
		return appDao.getAllMemberList();
	}

	@Override
	public List<AllMemberDto> getMembersIn(String[] superArray) {
		return appDao.getMembersIn(superArray);
	}

	@Override
	public List<DisType> getDisType() {
		return appDao.getDisType();
	}

	@Override
	public List<Subject> getSubject() {
		return appDao.getSubject();
	}

	@Override
	public List<Method> getMethod() {
		return appDao.getMethod();
	}

	@Override
	public void enrollDisbursement(Disbursement disbursement, Attachment attachment, String[] superArray, List<DisContent> disContents) {
		//첨부파일
		if(attachment.getOriginName() != null) {
			appDao.enrollAttachment(attachment);
			disbursement.setAttachmentNo(attachment.getAttachmentNo());
		}
		
		//결의서 추가
		appDao.enrollDisbursement(disbursement);
		disbursement.setDisbursementNo(disbursement.getDisbursementNo());
		
		//결의서 내용 추가
		for(int i=0; i<disContents.size(); i++) {
			DisContent disContent = disContents.get(i);
			disContent.setDisbursementNo(disbursement.getDisbursementNo());
			appDao.enrollDisContent(disContent);
		}
		
		//결의서-super 연결
		for(int i=0; i<superArray.length; i++) {
			DisApp disApp = new DisApp(disbursement.getDisbursementNo(), Integer.parseInt(superArray[i]), superArray.length-i);
			appDao.enrollDisSuper(disApp);
		}
	}

	@Override
	public int updateReport(ReportDto reportDto) {
			appDao.updateAttachmentReport(reportDto);
		return appDao.updateReport(reportDto);
	}

	@Override
	public int approvalReport(SuperApprovalDto superApprovalDto) {
		
		int approvalResult = 0; //결재 업데이트 결과
		
		//1. 결재자가 맞는지 확인
		int checkMemberNo = appDao.checkSupervisor(superApprovalDto);
		
		//2. 결재정보 업데이트
		if(checkMemberNo > 0) {
			// 2_1. Report Table - approval_no 업데이트
			int updateReport = appDao.updateApproval(superApprovalDto);
			// 2_2. Report_App Table = approval_no 업데이트
			int updateReportApp = appDao.updateAppApproval(superApprovalDto);
			
			approvalResult = updateReport * updateReportApp;
		}
		
		//3. '승인'시, 다음 결재자로 넘기기
		if(approvalResult>0 && superApprovalDto.getApprovalNo() == 2) {
			// 3_1. 결재자 status 전부 -1
			appDao.updateApp(superApprovalDto);
			// 3_2. 상위결재자가 있을 경우 확인 (해당 Report에 status =1 인 결재자가 있는지)
			int findSuper = appDao.findSupervisor(superApprovalDto);
			// 3_3. 상위결재자가 있으므로 Report Table - approval_no = 1로 업데이트
			if(findSuper > 0) {
				appDao.updateApproval(new SuperApprovalDto("Report", superApprovalDto.getMemberNo(), superApprovalDto.getReportNo(), 1));
			}
		}
		
		return approvalResult;
	}

	@Override
	public int approvalDis(SuperApprovalDto superApprovalDto) {
		
		int approvalResult = 0; //결재 업데이트 결과
		
		//1. 결재자가 맞는지 확인
		int checkMemberNo = appDao.checkSupervisor(superApprovalDto);
		
		//2. 결재정보 업데이트
		if(checkMemberNo > 0) {
			// 2_1. Dis Table - approval_no 업데이트
			int updateDis = appDao.updateApproval(superApprovalDto);
			// 2_2. Dis_App Table = approval_no 업데이트
			int updateDisApp = appDao.updateAppApproval(superApprovalDto);
			
			approvalResult = updateDis * updateDisApp;
		}
		//3. '승인'시, 다음 결재자로 넘기기
		if(approvalResult>0 && superApprovalDto.getApprovalNo() == 2) {
			// 3_1. 결재자 status 전부 -1
			appDao.updateApp(superApprovalDto);
			// 3_2. 상위결재자가 있을 경우 확인 (해당 Report에 status =1 인 결재자가 있는지)
			int findSuper = appDao.findSupervisor(superApprovalDto);
			// 3_3. 상위결재자가 있으므로 Report Table - approval_no = 1로 업데이트
			if(findSuper > 0) {
				appDao.updateApproval(new SuperApprovalDto("Disbursement", superApprovalDto.getMemberNo(), superApprovalDto.getDisbursementNo(), 1));
			}
		}
			
		return approvalResult;
	}

	
}
