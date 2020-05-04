package com.mj.jy.report.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("Reason")
public class Reason {

	private int reasonNo;
	private int typeNo;
	private String reason;
	
	
	public Reason() {
	}

	public Reason(int reasonNo, int typeNo, String reason) {
		this.reasonNo = reasonNo;
		this.typeNo = typeNo;
		this.reason = reason;
	}

	public int getReasonNo() {
		return reasonNo;
	}

	public void setReasonNo(int reasonNo) {
		this.reasonNo = reasonNo;
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
		return "Reason [reasonNo=" + reasonNo + ", typeNo=" + typeNo + ", reason=" + reason + "]";
	}
	
	
	
	
}
