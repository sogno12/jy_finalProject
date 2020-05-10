package com.mj.jy.schedule.model.vo;

public class ScheduleDto {
	
	private String scheduleNo;	// 일정 번호
	private int memberNo;		// 사원 번호
	private int departmentNo;	// 부서 번호
	private String content;		// 내용
	private String startDate;		// 시작날
	private String endDate;		// 종료날
	private String title;		// 제목
	private String backColor;	// 배경색
	private String allDay;		// 하루종일
	private String type;		// 카테고리
	
	public ScheduleDto() {}

	public ScheduleDto(String scheduleNo, int memberNo, int departmentNo, String content, String startDate, String endDate,
			String title, String backColor, String allDay, String type) {
		super();
		this.scheduleNo = scheduleNo;
		this.memberNo = memberNo;
		this.departmentNo = departmentNo;
		this.content = content;
		this.startDate = startDate;
		this.endDate = endDate;
		this.title = title;
		this.backColor = backColor;
		this.allDay = allDay;
		this.type = type;
	}

	public String getScheduleNo() {
		return scheduleNo;
	}

	public void setScheduleNo(String scheduleNo) {
		this.scheduleNo = scheduleNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getDepartmentNo() {
		return departmentNo;
	}

	public void setDepartmentNo(int departmentNo) {
		this.departmentNo = departmentNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBackColor() {
		return backColor;
	}

	public void setBackColor(String backColor) {
		this.backColor = backColor;
	}

	public String getAllDay() {
		return allDay;
	}

	public void setAllDay(String allDay) {
		this.allDay = allDay;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "ScheduleDto [scheduleNo=" + scheduleNo + ", memberNo=" + memberNo + ", departmentNo=" + departmentNo
				+ ", content=" + content + ", startDate=" + startDate + ", endDate=" + endDate + ", title=" + title
				+ ", backColor=" + backColor + ", allDay=" + allDay + "]";
	}
	
	

}
