package com.mj.jy.appBox.model.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.format.annotation.DateTimeFormat;

@Alias("ReportDto")
public class ReportDto {

	private int reportNo;
	private int categoryNo;
	private int createBy;
	private int approvalNo;
	private int attachmentNo;
	private Date createDate;
	private String title;
	

	@DateTimeFormat(pattern="MM/dd/yyyy")
	private Date beginDate;
	
	@DateTimeFormat(pattern="yyyy/MM/dd")
	private Date endDate;
	private String content;
	private int reasonNo;
	private int updateBy;
	private Date updateDate;
	private String updateName;
	private String name;
	
	
	public ReportDto() {
	}
	
	public ReportDto(int reportNo, int categoryNo, int createBy, int approvalNo, int attachmentNo, Date createDate,
			String title, Date beginDate, Date endDate, String content, int reasonNo, int updateBy, Date updateDate,
			String updateName, String name) {
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
		this.updateName = updateName;
		this.name = name;
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
		return "ReportDto [reportNo=" + reportNo + ", categoryNo=" + categoryNo + ", createBy=" + createBy
				+ ", approvalNo=" + approvalNo + ", attachmentNo=" + attachmentNo + ", createDate=" + createDate
				+ ", title=" + title + ", beginDate=" + beginDate + ", endDate=" + endDate + ", content=" + content
				+ ", reasonNo=" + reasonNo + ", updateBy=" + updateBy + ", updateDate=" + updateDate + ", updateName="
				+ updateName + ", name=" + name + "]";
	}

	
}
