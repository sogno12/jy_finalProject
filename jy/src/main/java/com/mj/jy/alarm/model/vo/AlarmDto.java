package com.mj.jy.alarm.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("AlarmDto")
public class AlarmDto {
	private int alarmNo;		//알람번호
	private int memberNo;		//사번
	private String status;		//확인여부
	private int approvalNo;		//승인번호
	private String type;		//분류
	
	
	public AlarmDto() {
	}

	public AlarmDto(int alarmNo, int memberNo, String status, int approvalNo, String type) {
		this.alarmNo = alarmNo;
		this.memberNo = memberNo;
		this.status = status;
		this.approvalNo = approvalNo;
		this.type = type;
	}
	public int getAlarmNo() {
		return alarmNo;
	}
	public void setAlarmNo(int alarmNo) {
		this.alarmNo = alarmNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
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
		return "Alarm [alarmNo=" + alarmNo + ", memberNo=" + memberNo + ", status=" + status + ", approvalNo="
				+ approvalNo + ", type=" + type + "]";
	}
	
	
}
