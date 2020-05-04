package com.mj.jy.approval.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("SuperApprovalDto")
public class SuperApprovalDto {

	private int memberNo;
	private int reportNo;
	private int disbursementNo;
	private int approvalNo;
	
	
	public SuperApprovalDto() {
	}
	
	public SuperApprovalDto(String table, int memberNo, int no, int approvalNo) {
		this.memberNo = memberNo;
		switch(table) {
			case "Report" : this.reportNo = no; break;
			case "Disbursement" : this.disbursementNo = no; break;
		}
		this.approvalNo = approvalNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getReportNo() {
		return reportNo;
	}

	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}

	public int getDisbursementNo() {
		return disbursementNo;
	}

	public void setDisbursementNo(int disbursementNo) {
		this.disbursementNo = disbursementNo;
	}

	public int getApprovalNo() {
		return approvalNo;
	}

	public void setApprovalNo(int approvalNo) {
		this.approvalNo = approvalNo;
	}

	@Override
	public String toString() {
		return "SuperApprovalDto [memberNo=" + memberNo + ", reportNo=" + reportNo + ", disbursementNo="
				+ disbursementNo + ", approvalNo=" + approvalNo + "]";
	}
	
	
}
