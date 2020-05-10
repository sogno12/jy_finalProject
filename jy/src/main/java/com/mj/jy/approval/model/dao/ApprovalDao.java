package com.mj.jy.approval.model.dao;

import java.util.List;
import java.util.Map;

import com.mj.jy.appBox.model.vo.DisbursementDto;
import com.mj.jy.appBox.model.vo.ReportDto;
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

public interface ApprovalDao {

	public List<Reason> getReportReasons(int typeNo);
	public int enrollAttachment(Attachment attachment);
	public int enrollReport(Report report);
	public List<AllMemberDto> getAllMemberList();
	public List<AllMemberDto> getMembersIn(String[] superArray);
	public int enrollReportSuper(ReportApp reportApp);
	public List<DisType> getDisType();
	public List<Subject> getSubject();
	public List<Method> getMethod();
	public int enrollDisbursement(Disbursement disbursement);
	public int enrollDisSuper(DisApp disApp);
	public int enrollDisContent(DisContent disContent);
	public void updateAttachmentReport(ReportDto reportDto);
	public int updateReport(ReportDto reportDto);
	public int checkSupervisor(SuperApprovalDto superApprovalDto);
	public int updateApproval(SuperApprovalDto superApprovalDto);
	public int updateAppApproval(SuperApprovalDto superApprovalDto);
	public void updateApp(SuperApprovalDto superApprovalDto);
	public int findSupervisor(SuperApprovalDto superApprovalDto);
	public int deleteReport(int reportNo);
	public int deleteDis(int disbursementNo);
	public void updateAttachmentDis(DisbursementDto disbursementDto);
	public List<Integer> countDisCon(int disbursementNo);
	public int updateDis(DisbursementDto disbursementDto);
	public int updateDisContent(DisContent disContent);
	public int deleteDisCon(Integer contentNo);
	public int changeVacationCount(Map<String, Double> updateVacationCount);
	public int theFindeSuper(SuperApprovalDto superApprovalDto);

}
