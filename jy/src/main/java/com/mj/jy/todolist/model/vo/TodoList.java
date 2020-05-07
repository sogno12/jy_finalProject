package com.mj.jy.todolist.model.vo;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias("TodoList")
public class TodoList {
	
	private int todoNo;		// 할일 번호
	private int memberNo;	// 사원 번호
	private String title;	// 제목
	private Date todoDate;	// 날짜
	private String status;	// 상태
	
	public TodoList() {}

	public TodoList(int todoNo, int memberNo, String title, Date todoDate, String status) {
		super();
		this.todoNo = todoNo;
		this.memberNo = memberNo;
		this.title = title;
		this.todoDate = todoDate;
		this.status = status;
	}

	public int getTodoNo() {
		return todoNo;
	}

	public void setTodoNo(int todoNo) {
		this.todoNo = todoNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getTodoDate() {
		return todoDate;
	}

	public void setTodoDate(Date todoDate) {
		this.todoDate = todoDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "TodoList [todoNo=" + todoNo + ", memberNo=" + memberNo + ", title=" + title + ", todoDate=" + todoDate
				+ ", status=" + status + "]";
	}
}
