package com.mj.jy.appBox.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mj.jy.appBox.model.dao.AppBoxDao;
import com.mj.jy.appBox.model.vo.DisContentDto;
import com.mj.jy.appBox.model.vo.DisbursementDto;
import com.mj.jy.appBox.model.vo.ReportDto;
import com.mj.jy.appBox.model.vo.SentAppBoxDto;
import com.mj.jy.approval.model.vo.ApprovalDto;
import com.mj.jy.member.model.vo.AllMemberDto;

@Service
public class AppBoxServiceImpl implements AppBoxService {

	private AppBoxDao appBoxDao;
	
	public AppBoxServiceImpl(AppBoxDao appBoxDao) {
		this.appBoxDao = appBoxDao;
	}
	
	@Override
	public List<SentAppBoxDto> getSentAppBox(int memberNo) {
		return appBoxDao.getSentAppBox(memberNo);
	}

	@Override
	public List<SentAppBoxDto> getEndSentAppBox(int memberNo) {
		return appBoxDao.getEndSentAppBox(memberNo);
	}

	@Override
	public ReportDto getOneReport(int reportNo) {
		return appBoxDao.getOneReport(reportNo);
	}

	@Override
	public List<AllMemberDto> getSupervisers(int reportNo) {
		return appBoxDao.getSupervisers(reportNo);
	}

	@Override
	public List<ApprovalDto> getApprovalTypes() {
		return appBoxDao.getApprovalTypes();
	}

	@Override
	public List<SentAppBoxDto> getReceiveAppBox(int memberNo) {
		return appBoxDao.getReceiveAppBox(memberNo);
	}

	@Override
	public List<SentAppBoxDto> getEndReceiveAppBox(int memberNo) {
		return appBoxDao.getEndReceiveAppBox(memberNo);
	}

	@Override
	public DisbursementDto getOneDis(int disbursementNo) {
		return appBoxDao.getOneDis(disbursementNo);
	}

	@Override
	public List<AllMemberDto> getDisSupervisers(int disbursementNo) {
		return appBoxDao.getDisSupervisers(disbursementNo);
	}

	@Override
	public List<DisContentDto> getDisContents(int disbursementNo) {
		return appBoxDao.getDisContents(disbursementNo);
	}

}
