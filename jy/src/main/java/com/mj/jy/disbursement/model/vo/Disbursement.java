package com.mj.jy.disbursement.model.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("Disbursement")
public class Disbursement {

	private int disbursementNo;		//지불결의서식별번호
	private int categoryNo;			//카테고리인식번호
	private int disTypeNo;			//지출결의서타입번호
	private int createBy;			//작성자
	private int updateBy;			//수정자
	private int approvalNo;			//최종결재상태
	private int attachmentNo;		//첨부파일식별번호
	private Date createDate;		//작성일시
	private String title;			//문서제목
	private int payment;			//요청총금액
	private String terms;			//지급조건
	private Date updateDate;		//수정일시
	private String bank;			//은행계좌
	private String account;			//계좌번호
	
	
	
	public Disbursement() {
	}

	public Disbursement(int disbursementNo, int categoryNo, int disTypeNo, int createBy, int updateBy, int approvalNo,
			int attachmentNo, Date createDate, String title, int payment, String terms, Date updateDate, String bank,
			String account) {
		this.disbursementNo = disbursementNo;
		this.categoryNo = categoryNo;
		this.disTypeNo = disTypeNo;
		this.createBy = createBy;
		this.updateBy = updateBy;
		this.approvalNo = approvalNo;
		this.attachmentNo = attachmentNo;
		this.createDate = createDate;
		this.title = title;
		this.payment = payment;
		this.terms = terms;
		this.updateDate = updateDate;
		this.bank = bank;
		this.account = account;
	}

	public int getDisbursementNo() {
		return disbursementNo;
	}

	public void setDisbursementNo(int disbursementNo) {
		this.disbursementNo = disbursementNo;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public int getDisTypeNo() {
		return disTypeNo;
	}

	public void setDisTypeNo(int disTypeNo) {
		this.disTypeNo = disTypeNo;
	}

	public int getCreateBy() {
		return createBy;
	}

	public void setCreateBy(int createBy) {
		this.createBy = createBy;
	}

	public int getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(int updateBy) {
		this.updateBy = updateBy;
	}

	public int getApprovalNo() {
		return approvalNo;
	}

	public void setApprovalNo(int approvalNo) {
		this.approvalNo = approvalNo;
	}

	public int getAttachmentNo() {
		return attachmentNo;
	}

	public void setAttachmentNo(int attachmentNo) {
		this.attachmentNo = attachmentNo;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getPayment() {
		return payment;
	}

	public void setPayment(int payment) {
		this.payment = payment;
	}

	public String getTerms() {
		return terms;
	}

	public void setTerms(String terms) {
		this.terms = terms;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	@Override
	public String toString() {
		return "Disbursement [disbursementNo=" + disbursementNo + ", categoryNo=" + categoryNo + ", disTypeNo="
				+ disTypeNo + ", createBy=" + createBy + ", updateBy=" + updateBy + ", approvalNo=" + approvalNo
				+ ", attachmentNo=" + attachmentNo + ", createDate=" + createDate + ", title=" + title + ", payment="
				+ payment + ", terms=" + terms + ", updateDate=" + updateDate + ", bank=" + bank + ", account="
				+ account + "]";
	}
	
	
	
}
