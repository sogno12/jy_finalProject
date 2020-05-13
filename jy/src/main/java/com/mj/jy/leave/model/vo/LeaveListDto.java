package com.mj.jy.leave.model.vo;

import java.sql.Date;

public class LeaveListDto {
	
	private Date beginDate;
	private Date endDate;
	private int days;
	private String Title;
	private String content;
	private Date date;
	
	public LeaveListDto() {
		
	}
	

	public LeaveListDto(Date beginDate, Date endDate, int days, String title, String content, Date date) {
		super();
		this.beginDate = beginDate;
		this.endDate = endDate;
		this.days = days;
		this.Title = title;
		this.content = content;
		this.date = date;
	}


	public Date getBeginDate() {
		return beginDate;
	}

	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getDays() {
		return days;
	}

	public void setDays(int days) {
		this.days = days;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	
}
