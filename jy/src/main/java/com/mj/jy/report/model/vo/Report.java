package com.mj.jy.report.model.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Report {

	private int reportNo;
	private int categoryNo;
	private int createBy;
	private int approvalNo;
	private int attachmentNo;
	private int createDate;
	private String title;
	
	@DateTimeFormat(pattern="MM/dd/yyyy")
	private Date beginDate;
	@DateTimeFormat(pattern="MM/dd/yyyy")
	private Date endDate;
	
	private String content;
	private int reasonNo;
	private int updateBy;
	private Date updateDate;
	
	public Report() {
	}
	
	public Report(int reportNo, int categoryNo, int createBy, int approvalNo, int attachmentNo, int createDate,
			String title, Date beginDate, Date endDate, String content, int reasonNo, int updateBy, Date updateDate) {
		this.reportNo = reportNo;
		this.categoryNo = categoryNo;
		this.createBy = createBy;
		this.approvalNo = approvalNo;
		this.attachmentNo = attachmentNo;
		this.createDate = createDate;
		this.title = title;
		this.beginDate = beginDate;
		this.endDate = endDate;
		this.content = content;
		this.reasonNo = reasonNo;
		this.updateBy = updateBy;
		this.updateDate = updateDate;
	}
	
	
	public void createBy(int memberNo) {
		this.createBy = memberNo;
	}
	
	
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
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
	public int getCreateDate() {
		return createDate;
	}
	public void setCreateDate(int createDate) {
		this.createDate = createDate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getBeginDate() {
		return beginDate;
	}
	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReasonNo() {
		return reasonNo;
	}
	public void setReasonNo(int reasonNo) {
		this.reasonNo = reasonNo;
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
	@Override
	public String toString() {
		return "Report [reportNo=" + reportNo + ", categoryNo=" + categoryNo + ", createBy=" + createBy
				+ ", approvalNo=" + approvalNo + ", attachmentNo=" + attachmentNo + ", createDate=" + createDate
				+ ", title=" + title + ", beginDate=" + beginDate + ", endDate=" + endDate + ", content=" + content
				+ ", reasonNo=" + reasonNo + ", updateBy=" + updateBy + ", updateDate=" + updateDate + "]";
	}
	
}
