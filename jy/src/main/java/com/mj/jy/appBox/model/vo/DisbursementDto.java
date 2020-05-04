package com.mj.jy.appBox.model.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("DisbursementDto")
public class DisbursementDto {
	
	private int disbursementNo;
	private int categoryNo;
	private int createBy;
	private int approvalNo;
	private int attachmentNo;
	private Date createDate;
	private String title;
	private int disTypeNo;
	private int updateBy;
	private Date updateDate;
	private int payment;
	private String terms;
	private String bank;
	private String account;
	private String updateName;
	private String name;
	
	
	public DisbursementDto() {
	}


	public DisbursementDto(int disbursementNo, int categoryNo, int createBy, int approvalNo, int attachmentNo,
			Date createDate, String title, int disTypeNo, int updateBy, Date updateDate, int payment, String terms,
			String bank, String account, String updateName, String name) {
		this.disbursementNo = disbursementNo;
		this.categoryNo = categoryNo;
		this.createBy = createBy;
		this.approvalNo = approvalNo;
		this.attachmentNo = attachmentNo;
		this.createDate = createDate;
		this.title = title;
		this.disTypeNo = disTypeNo;
		this.updateBy = updateBy;
		this.updateDate = updateDate;
		this.payment = payment;
		this.terms = terms;
		this.bank = bank;
		this.account = account;
		this.updateName = updateName;
		this.name = name;
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


	public int getCreateBy() {
		return createBy;
	}


	public void setCreateBy(int createBy) {
		this.createBy = createBy;
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


	public int getDisTypeNo() {
		return disTypeNo;
	}


	public void setDisTypeNo(int disTypeNo) {
		this.disTypeNo = disTypeNo;
	}


	public int getUpdateBy() {
		return updateBy;
	}


	public void setUpdateBy(int updateBy) {
		this.updateBy = updateBy;
	}


	public Date getUpdateDate() {
		return updateDate;
	}


	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
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


	public String getUpdateName() {
		return updateName;
	}


	public void setUpdateName(String updateName) {
		this.updateName = updateName;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	@Override
	public String toString() {
		return "DisbursementDto [disbursementNo=" + disbursementNo + ", categoryNo=" + categoryNo + ", createBy="
				+ createBy + ", approvalNo=" + approvalNo + ", attachmentNo=" + attachmentNo + ", createDate="
				+ createDate + ", title=" + title + ", disTypeNo=" + disTypeNo + ", updateBy=" + updateBy
				+ ", updateDate=" + updateDate + ", payment=" + payment + ", terms=" + terms + ", bank=" + bank
				+ ", account=" + account + ", updateName=" + updateName + ", name=" + name + "]";
	}

	
	
}
