package com.mj.jy.appBox.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.mj.jy.appBox.model.dao.AppBoxDao;
import com.mj.jy.appBox.model.vo.DisContentDto;
import com.mj.jy.appBox.model.vo.DisbursementDto;
import com.mj.jy.appBox.model.vo.ReportDto;
import com.mj.jy.appBox.model.vo.SentAppBoxDto;
import com.mj.jy.approval.model.vo.ApprovalDto;
import com.mj.jy.member.model.vo.AllMemberDto;
import com.mj.jy.namecard.model.vo.PageInfo;

@Service
public class AppBoxServiceImpl implements AppBoxService {

	private AppBoxDao appBoxDao;
	
	public AppBoxServiceImpl(AppBoxDao appBoxDao) {
		this.appBoxDao = appBoxDao;
	}
	
	@Override
	public List<SentAppBoxDto> getSentAppBox(int memberNo, PageInfo pi) {
		RowBounds rowBounds = new RowBounds(pi.getCurrentPage(), pi.getBoardLimit());
		return appBoxDao.getSentAppBox(memberNo, rowBounds);
	}

	@Override
	public List<SentAppBoxDto> getEndSentAppBox(int memberNo, PageInfo pi) {
		RowBounds rowBounds = new RowBounds(pi.getCurrentPage(), pi.getBoardLimit());
		return appBoxDao.getEndSentAppBox(memberNo, rowBounds);
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
	public List<SentAppBoxDto> getReceiveAppBox(int memberNo, PageInfo pi) {
		RowBounds rowBounds = new RowBounds(pi.getCurrentPage(), pi.getBoardLimit());
		return appBoxDao.getReceiveAppBox(memberNo, rowBounds);
	}

	@Override
	public List<SentAppBoxDto> getEndReceiveAppBox(int memberNo, PageInfo pi) {
		RowBounds rowBounds = new RowBounds(pi.getCurrentPage(), pi.getBoardLimit());
		return appBoxDao.getEndReceiveAppBox(memberNo, rowBounds);
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

	@Override
	public int countSendAppBox(int memberNo) {
		return appBoxDao.countSendAppBox(memberNo);
	}

	@Override
	public int countEndSentAppBox(int memberNo) {
		return appBoxDao.countEndSentAppBox(memberNo);
	}

	@Override
	public int countReceiveAppBox(int memberNo) {
		return appBoxDao.countReceiveAppBox(memberNo);
	}

	@Override
	public int countEndReceiveAppBox(int memberNo) {
		return appBoxDao.countEndReceiveAppBox(memberNo);
	}

}
