package com.mj.jy.commute.model.vo;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

@Alias("CommuteViewDto")
public class CommuteViewDto {
	
	private String name; // 이름
	private String department; // 부서 
	private String tardy; // 지각 여부 
	private String empNo; // 사번
	private int tardycount; // 지각횟수 
	private int absence; // 결근횟수 
	private Timestamp attendTime;	// 출근 시간
	private Timestamp quittingTime;	// 퇴근시간
	CommuteViewDto(){
		
	}
	public CommuteViewDto(String name, String department, String tardy, String empNo, int tardycount, int absence,
			Timestamp attendTime, Timestamp quittingTime) {
		super();
		this.name = name;
		this.department = department;
		this.tardy = tardy;
		this.empNo = empNo;
		this.tardycount = tardycount;
		this.absence = absence;
		this.attendTime = attendTime;
		this.quittingTime = quittingTime;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
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
	public int getTardycount() {
		return tardycount;
	}
	public void setTardycount(int tardycount) {
		this.tardycount = tardycount;
	}
	public int getAbsence() {
		return absence;
	}
	public void setAbsence(int absence) {
		this.absence = absence;
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
	
	
}
