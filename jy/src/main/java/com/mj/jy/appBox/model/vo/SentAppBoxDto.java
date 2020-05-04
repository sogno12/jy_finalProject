package com.mj.jy.appBox.model.vo;

import java.util.Date;
import org.apache.ibatis.type.Alias;

@Alias("SentAppBoxDto")
public class SentAppBoxDto {
	
	private int no;
	private int categoryNo;
	private String category;
	private String title;
	private Date createDate;
	private int approvalNo;
	private String type;
	private String name;		// 작성자명
	
	
	
	public SentAppBoxDto() {
	}
	
	public SentAppBoxDto(int no, int categoryNo, String category, String title, Date createDate, int approvalNo,
			String type, String name) {
		this.no = no;
		this.categoryNo = categoryNo;
		this.category = category;
		this.title = title;
		this.createDate = createDate;
		this.approvalNo = approvalNo;
		this.type = type;
		this.name = name;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public int getApprovalNo() {
		return approvalNo;
	}
	public void setApprovalNo(int approvalNo) {
		this.approvalNo = approvalNo;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "SentAppBoxDto [no=" + no + ", categoryNo=" + categoryNo + ", category=" + category + ", title=" + title
				+ ", createDate=" + createDate + ", approvalNo=" + approvalNo + ", type=" + type + ", name=" + name
				+ "]";
	}


}
