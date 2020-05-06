package com.mj.jy.commute.model.vo;

import java.sql.Date;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

@Alias("CommuteDto")
public class CommuteDto {
	
	private int commuteNo;			// 근태번호
	private int memberNo;			// 사원번호
	private Date commuteDate;		// 출퇴근날짜
	private Timestamp attendTime;	// 출근 시간
	private Timestamp quittingTime;	// 퇴근시간
	private String tardy;			// 지각 여부
	private String empNo;			// 사번
	private String memberName;		// 이름
	private int count;				// 지각횟수
	
	public CommuteDto() {}

	public CommuteDto(int commuteNo, int memberNo, Date commuteDate, Timestamp attendTime, Timestamp quittingTime,
			String tardy, String empNo, String memberName, int count) {
		super();
		this.commuteNo = commuteNo;
		this.memberNo = memberNo;
		this.commuteDate = commuteDate;
		this.attendTime = attendTime;
		this.quittingTime = quittingTime;
		this.tardy = tardy;
		this.empNo = empNo;
		this.memberName = memberName;
		this.count = count;
	}

	public int getCommuteNo() {
		return commuteNo;
	}

	public void setCommuteNo(int commuteNo) {
		this.commuteNo = commuteNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public Date getCommuteDate() {
		return commuteDate;
	}

	public void setCommuteDate(Date commuteDate) {
		this.commuteDate = commuteDate;
	}

	public Timestamp getAttendTime() {
		return attendTime;
	}

	public void setAttendTime(Timestamp attendTime) {
		this.attendTime = attendTime;
	}

	public Timestamp getQuittingTime() {
		return quittingTime;
	}

	public void setQuittingTime(Timestamp quittingTime) {
		this.quittingTime = quittingTime;
	}

	public String getTardy() {
		return tardy;
	}

	public void setTardy(String tardy) {
		this.tardy = tardy;
	}

	public String getEmpNo() {
		return empNo;
	}

	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "CommuteDto [commuteNo=" + commuteNo + ", memberNo=" + memberNo + ", commuteDate=" + commuteDate
				+ ", attendTime=" + attendTime + ", quittingTime=" + quittingTime + ", tardy=" + tardy + ", empNo="
				+ empNo + ", memberName=" + memberName + ", count=" + count + "]";
	}

	
}
