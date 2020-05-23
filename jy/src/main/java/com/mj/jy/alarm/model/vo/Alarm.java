package com.mj.jy.alarm.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("Alarm")
public class Alarm {
	private int alarmNo;		//알람번호
	private int senderNo;		//보낸사번
	private String status;		//확인여부
	private int approvalNo;		//승인번호
	private String type;		//분류
	private int recieverNo;		//받는사번
	
	public Alarm() {
	}

	public Alarm(int senderNo, String type, int recieverNo) {
		super();
		this.senderNo = senderNo;
		this.type = type;
		this.recieverNo = recieverNo;
	}

	public Alarm(int alarmNo, int senderNo, String status, int approvalNo, String type, int recieverNo) {
		this.alarmNo = alarmNo;
		this.senderNo = senderNo;
		this.status = status;
		this.approvalNo = approvalNo;
		this.type = type;
		this.recieverNo = recieverNo;
	}

	public int getAlarmNo() {
		return alarmNo;
	}

	public void setAlarmNo(int alarmNo) {
		this.alarmNo = alarmNo;
	}

	public int getSenderNo() {
		return senderNo;
	}

	public void setSenderNo(int senderNo) {
		this.senderNo = senderNo;
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

	public int getRecieverNo() {
		return recieverNo;
	}

	public void setRecieverNo(int recieverNo) {
		this.recieverNo = recieverNo;
	}

	@Override
	public String toString() {
		return "Alarm [alarmNo=" + alarmNo + ", senderNo=" + senderNo + ", status=" + status + ", approvalNo="
				+ approvalNo + ", type=" + type + ", recieverNo=" + recieverNo + "]";
	}

	
}
