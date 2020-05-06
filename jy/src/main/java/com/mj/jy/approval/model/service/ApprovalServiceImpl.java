package com.mj.jy.approval.model.service;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mj.jy.appBox.model.vo.DisbursementDto;
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

	@Override
	@Transactional
	public int enrollReport(Report report, Attachment attachment, String[] superArray) {
		int enrollResult = 0;
		
		//첨부파일
		if(attachment.getOriginName() != null) {
			appDao.enrollAttachment(attachment);
			report.setAttachmentNo(attachment.getAttachmentNo());
		}
		
		//리포트 추가
		enrollResult = appDao.enrollReport(report);
		report.setReportNo(report.getReportNo());
		
		
		//리포트-super연결
		for(int i=0; i<superArray.length; i++) {
			ReportApp reportApp = new ReportApp(report.getReportNo(), Integer.parseInt(superArray[i]), superArray.length-i);
			enrollResult = enrollResult * appDao.enrollReportSuper(reportApp);
		}
		return enrollResult;
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
	public int enrollDisbursement(Disbursement disbursement, Attachment attachment, String[] superArray, List<DisContent> disContents) {
		int enrollResult = 0;
		
		//첨부파일
		if(attachment.getOriginName() != null) {
			appDao.enrollAttachment(attachment);
			disbursement.setAttachmentNo(attachment.getAttachmentNo());
		}
		
		//결의서 추가
		enrollResult = appDao.enrollDisbursement(disbursement);
		disbursement.setDisbursementNo(disbursement.getDisbursementNo());
		
		//결의서 내용 추가
		for(int i=0; i<disContents.size(); i++) {
			DisContent disContent = disContents.get(i);
			disContent.setDisbursementNo(disbursement.getDisbursementNo());
			enrollResult = enrollResult * appDao.enrollDisContent(disContent);
		}
		
		//결의서-super 연결
		for(int i=0; i<superArray.length; i++) {
			DisApp disApp = new DisApp(disbursement.getDisbursementNo(), Integer.parseInt(superArray[i]), superArray.length-i);
			enrollResult = enrollResult * appDao.enrollDisSuper(disApp);
		}
		
		return enrollResult;
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

	@Override
	public int deleteReport(int reportNo) {
		return appDao.deleteReport(reportNo);
	}

	@Override
	public int deleteDis(int disbursementNo) {
		return appDao.deleteDis(disbursementNo);
	}

	@Override
	public int updateDis(DisbursementDto disbursementDto, List<DisContent> disContents) {
		
		int updateResult = 0;
		
		//1. 파일업데이트
			appDao.updateAttachmentDis(disbursementDto);
		//2. Dis 업데이트
			updateResult = appDao.updateDis(disbursementDto);
			
		//3. Dis 내용 업데이트 (갯수마다 범위 나눠서)
			//3.1 원래 갯수 확인
			List<Integer> disCon = appDao.countDisCon(disbursementDto.getDisbursementNo());
			System.out.println(disCon);
			
			//3.2 갯수가 같을때 : 내용 업데이트
			if(disCon.size() == disContents.size()) {
				for(int i = 0; i<disCon.size(); i++) {
					DisContent disContent = disContents.get(i);
					disContent.setDisbursementNo(disbursementDto.getDisbursementNo());
					disContent.setContentNo(disCon.get(i));
					int result = appDao.updateDisContent(disContent);
					updateResult = updateResult * result;
				}
				
			//3.3 기존내용의 갯수가 새 내용의 갯수보다 적을 때	: 내용 업데이트 + 추가내용 insert
			} else if( disCon.size() < disContents.size()) {
				for(int i = 0; i<disCon.size(); i++) {
					DisContent disContent = disContents.get(i);
					disContent.setDisbursementNo(disbursementDto.getDisbursementNo());
					disContent.setContentNo(disCon.get(i));
					updateResult = updateResult * appDao.updateDisContent(disContent);
				}
				for(int j = disCon.size(); j<disContents.size(); j++) {
					DisContent disContent = disContents.get(j);
					disContent.setDisbursementNo(disbursementDto.getDisbursementNo());
					int result = appDao.enrollDisContent(disContent);
					updateResult = updateResult * result;
				}
				
			// 3.4 기존내용의 갯수가 새 내용의 갯수보다 많을 때 : 내용 업데이트 + 남는기존내용 삭제('N')
			} else {
				for(int i = 0; i<disContents.size(); i++) {
					DisContent disContent = disContents.get(i);
					disContent.setDisbursementNo(disbursementDto.getDisbursementNo());
					disContent.setContentNo(disCon.get(i));
					int result = appDao.updateDisContent(disContent);
					updateResult = updateResult * result;
				}
				for(int j = disContents.size(); j<disCon.size(); j++) {
					int result = appDao.deleteDisCon(disCon.get(j));
					updateResult = updateResult * result;
				}
			}
		
		return updateResult;
	}

	
}
