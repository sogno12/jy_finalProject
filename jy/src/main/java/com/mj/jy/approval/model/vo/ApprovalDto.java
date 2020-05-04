package com.mj.jy.approval.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("ApprovalDto")
public class ApprovalDto {
	private int approvalNo;
	private String type;
	
	
	public ApprovalDto() {
	}
	public ApprovalDto(int approvalNo, String type) {
		this.approvalNo = approvalNo;
		this.type = type;
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
	@Override
	public String toString() {
		return "ApprovalDto [approvalNo=" + approvalNo + ", type=" + type + "]";
	}

	
	
}
