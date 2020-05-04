package com.mj.jy.appBox.model.dao;

import java.util.List;

import com.mj.jy.appBox.model.vo.DisContentDto;
import com.mj.jy.appBox.model.vo.DisbursementDto;
import com.mj.jy.appBox.model.vo.ReportDto;
import com.mj.jy.appBox.model.vo.SentAppBoxDto;
import com.mj.jy.approval.model.vo.ApprovalDto;
import com.mj.jy.member.model.vo.AllMemberDto;

public interface AppBoxDao {

	List<SentAppBoxDto> getSentAppBox(int memberNo);
	List<SentAppBoxDto> getEndSentAppBox(int memberNo);
	ReportDto getOneReport(int reportNo);
	List<AllMemberDto> getSupervisers(int reportNo);
	List<ApprovalDto> getApprovalTypes();
	List<SentAppBoxDto> getReceiveAppBox(int memberNo);
	List<SentAppBoxDto> getEndReceiveAppBox(int memberNo);
	DisbursementDto getOneDis(int disbursementNo);
	List<AllMemberDto> getDisSupervisers(int disbursementNo);
	List<DisContentDto> getDisContents(int disbursementNo);

}
