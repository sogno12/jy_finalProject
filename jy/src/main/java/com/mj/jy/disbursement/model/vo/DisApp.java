package com.mj.jy.disbursement.model.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("DisApp")
public class DisApp {

	private int disAppNo;
	private int disbursementNo;
	private int memberNo;
	private int approvalNo;
	private Date date;
	private int status;
	
	public DisApp() {
	}
	
	

	public DisApp(int disbursementNo, int memberNo, int status) {
		this.disbursementNo = disbursementNo;
		this.memberNo = memberNo;
		this.status = status;
	}



	public DisApp(int disAppNo, int disbursementNo, int memberNo, int approvalNo, Date date, int status) {
		this.disAppNo = disAppNo;
		this.disbursementNo = disbursementNo;
		this.memberNo = memberNo;
		this.approvalNo = approvalNo;
		this.date = date;
		this.status = status;
	}

	public int getDisAppNo() {
		return disAppNo;
	}

	public void setDisAppNo(int disAppNo) {
		this.disAppNo = disAppNo;
	}

	public int getDisbursementNo() {
		return disbursementNo;
	}

	public void setDisbursementNo(int disbursementNo) {
		this.disbursementNo = disbursementNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getApprovalNo() {
		return approvalNo;
	}

	public void setApprovalNo(int approvalNo) {
		this.approvalNo = approvalNo;
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
		return "DisApp [disAppNo=" + disAppNo + ", disbursementNo=" + disbursementNo + ", memberNo=" + memberNo
				+ ", approvalNo=" + approvalNo + ", date=" + date + ", status=" + status + "]";
	}


	
	
	
}
