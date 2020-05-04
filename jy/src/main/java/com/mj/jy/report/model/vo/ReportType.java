package com.mj.jy.report.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("ReportType")
public class ReportType {

	private int typeNo;
	private String reason;
	
	
	public ReportType() {
	}
	
	public ReportType(int typeNo, String reason) {
		this.typeNo = typeNo;
		this.reason = reason;
	}
	public int getTypeNo() {
		return typeNo;
	}
	public void setTypeNo(int typeNo) {
		this.typeNo = typeNo;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	
	
	@Override
	public String toString() {
		return "ReportType [typeNo=" + typeNo + ", reason=" + reason + "]";
	}
	
}
