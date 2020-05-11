package com.mj.jy.leave.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("LeaveDto")
public class LeaveDto {

	public String name;
	public String department;
	private int leavedaysYear;
	private String empNo;
	private int givenDays;
	private int leftDays;
	private int vacationcount;
	
	
	public LeaveDto() {
		
	}
	
	
	public LeaveDto(String name, String department, int leaveYear, String empNo, int givenDay, int leftDay,
			int vacationcount) {
		super();
		this.name = name;
		this.department = department;
		this.leavedaysYear = leaveYear;
		this.empNo = empNo;
		this.givenDays = givenDay;
		this.leftDays = leftDay;
		this.vacationcount = vacationcount;
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
	public int getLeaveYear() {
		return leavedaysYear;
	}
	public void setLeaveYear(int leavedaysYear) {
		this.leavedaysYear = leavedaysYear;
	}
	public String getEmpNo() {
		return empNo;
	}
	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}
	public int getGivenDay() {
		return givenDays;
	}
	public void setGivenDay(int givenDay) {
		this.givenDays = givenDay;
	}
	public int getLeftDay() {
		return leftDays;
	}
	public void setLeftDay(int leftDay) {
		this.leftDays = leftDay;
	}
	public int getVacationCount() {
		return vacationcount;
	}
	public void setVacationCount(int vacationCount) {
		this.vacationcount = vacationCount;
	}
	

	
}
