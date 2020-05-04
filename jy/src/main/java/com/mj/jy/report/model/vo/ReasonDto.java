package com.mj.jy.report.model.vo;

public class ReasonDto {
	
	private int reasonNo;
	private int typeNo;
	private String reason;
	
	public ReasonDto(Reason reason) {
		this(reason.getReasonNo(), reason.getTypeNo(), reason.getReason());
	}

	public ReasonDto(int reasonNo, int typeNo, String reason) {
		this.reasonNo = reasonNo;
		this.typeNo = typeNo;
		this.reason = reason;
	}
	
	public int getReasonNo() {
		return reasonNo;
	}
	
	public int getTypeNo() {
		return typeNo;
	}
	
	public String getReason() {
		return reason;
	}
}
