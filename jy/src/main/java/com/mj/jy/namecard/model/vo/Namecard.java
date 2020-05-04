package com.mj.jy.namecard.model.vo;

import java.sql.Date;

public class Namecard {
	
	private int namecardNo;
	private int memberNo;
	private String contentType;
	private Date reportingDate;
	private Date processingDate;
	private String status;
	
	public Namecard() {
		
	}

	public Namecard(int namecardNo, int memberNo, String contentType, Date reportingDate, Date processingDate,
			String status) {
		super();
		this.namecardNo = namecardNo;
		this.memberNo = memberNo;
		this.contentType = contentType;
		this.reportingDate = reportingDate;
		this.processingDate = processingDate;
		this.status = status;
	}

	public int getNamecardNo() {
		return namecardNo;
	}

	public void setNamecardNo(int namecardNo) {
		this.namecardNo = namecardNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public Date getReportingDate() {
		return reportingDate;
	}

	public void setReportingDate(Date reportingDate) {
		this.reportingDate = reportingDate;
	}

	public Date getProcessingDate() {
		return processingDate;
	}

	public void setProcessingDate(Date processingDate) {
		this.processingDate = processingDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Namecard [namecardNo=" + namecardNo + ", memberNo=" + memberNo + ", contentType=" + contentType
				+ ", reportingDate=" + reportingDate + ", processingDate=" + processingDate + ", status=" + status
				+ "]";
	}
	

}
