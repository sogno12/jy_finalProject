package com.mj.jy.report.model.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("ReportApp")
public class ReportApp {
	private int reportAppNo;
	private int reportNo;
	private int memberNo;
	private int approval_no;
	private Date date;
	private int status;
	
	
	public ReportApp() {
	}
	
	
	public ReportApp(int reportNo, int memberNo, int status) {
		this.reportNo = reportNo;
		this.memberNo = memberNo;
		this.status = status;
	}


	public ReportApp(int reportAppNo, int reportNo, int memberNo, int approval_no, Date date, int status) {
		this.reportAppNo = reportAppNo;
		this.reportNo = reportNo;
		this.memberNo = memberNo;
		this.approval_no = approval_no;
		this.date = date;
		this.status = status;
	}
	public int getReportAppNo() {
		return reportAppNo;
	}
	public void setReportAppNo(int reportAppNo) {
		this.reportAppNo = reportAppNo;
	}
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public int getApproval_no() {
		return approval_no;
	}
	public void setApproval_no(int approval_no) {
		this.approval_no = approval_no;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "ReportApp [reportAppNo=" + reportAppNo + ", reportNo=" + reportNo + ", memberNo=" + memberNo
				+ ", approval_no=" + approval_no + ", date=" + date + ", status=" + status + "]";
	}

	
	

}
