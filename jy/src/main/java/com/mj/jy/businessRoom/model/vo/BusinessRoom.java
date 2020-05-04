package com.mj.jy.businessRoom.model.vo;

import java.sql.Date;

public class BusinessRoom {
	
	private int meetingNo;
	private int memberNo;
	private int roomNo;
	private int time;
	private Date reportingDate;
	private Date hopeDate;
	private Date statusDate;
	private int count;
	private String status;
	
	public BusinessRoom() {
		
	}

	public BusinessRoom(int meetingNo, int memberNo, int roomNo, int time, Date reportingDate, Date hopeDate,
			Date statusDate, int count, String status) {
		super();
		this.meetingNo = meetingNo;
		this.memberNo = memberNo;
		this.roomNo = roomNo;
		this.time = time;
		this.reportingDate = reportingDate;
		this.hopeDate = hopeDate;
		this.statusDate = statusDate;
		this.count = count;
		this.status = status;
	}

	public int getMeetingNo() {
		return meetingNo;
	}

	public void setMeetingNo(int meetingNo) {
		this.meetingNo = meetingNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public int getTime() {
		return time;
	}

	public void setTime(int time) {
		this.time = time;
	}

	public Date getReportingDate() {
		return reportingDate;
	}

	public void setReportingDate(Date reportingDate) {
		this.reportingDate = reportingDate;
	}

	public Date getHopeDate() {
		return hopeDate;
	}

	public void setHopeDate(Date hopeDate) {
		this.hopeDate = hopeDate;
	}

	public Date getStatusDate() {
		return statusDate;
	}

	public void setStatusDate(Date statusDate) {
		this.statusDate = statusDate;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "BusinessRoom [meetingNo=" + meetingNo + ", memberNo=" + memberNo + ", roomNo=" + roomNo + ", time="
				+ time + ", reportingDate=" + reportingDate + ", hopeDate=" + hopeDate + ", statusDate=" + statusDate
				+ ", count=" + count + ", status=" + status + "]";
	}
	

}
