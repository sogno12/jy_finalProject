package com.mj.jy.businessRoom.model.vo;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias("BusinessDTO")
public class BusinessDTO {
	
	private int meetingNo;
	private int memberNo;
	private int roomNo;
	private int time;
	private Date reportingDate;
	private Date hopeDate;
	private Date statusDate;
	private int count;
	private String status;
	
	private String hopeDateStr;
	
	private String roomName;
	private int roomCount;
	private String position;
	
	private String timeType;
	
	public BusinessDTO() {
		
	}

	public BusinessDTO(int meetingNo, int memberNo, int roomNo, int time, Date reportingDate, Date hopeDate,
			Date statusDate, int count, String status, String roomName, int roomCount, String position,
			String timeType) {
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
		this.roomName = roomName;
		this.roomCount = roomCount;
		this.position = position;
		this.timeType = timeType;
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

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public int getRoomCount() {
		return roomCount;
	}

	public void setRoomCount(int roomCount) {
		this.roomCount = roomCount;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getTimeType() {
		return timeType;
	}

	public void setTimeType(String timeType) {
		this.timeType = timeType;
	}

	
	public String getHopeDateStr() {
		return hopeDateStr;
	}

	public void setHopeDateStr(String hopeDateStr) {
		this.hopeDateStr = hopeDateStr;
	}

	@Override
	public String toString() {
		return "BusinessDTO [meetingNo=" + meetingNo + ", memberNo=" + memberNo + ", roomNo=" + roomNo + ", time="
				+ time + ", reportingDate=" + reportingDate + ", hopeDate=" + hopeDate + ", statusDate=" + statusDate
				+ ", count=" + count + ", status=" + status + ", roomName=" + roomName + ", roomCount=" + roomCount
				+ ", position=" + position + ", timeType=" + timeType + "]";
	}
	
}
