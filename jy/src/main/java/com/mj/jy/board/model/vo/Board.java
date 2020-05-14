package com.mj.jy.board.model.vo;

import java.sql.Date;

public class Board {

	private int boardNo;
	private int memberNo;
	private String title;
	private Date writtenDate;
	private int views;
	private String content;
	
	public Board() {
		
	}
	
	public Board(int boardNo, int memberNo, String title, Date writtenDate, int views, String content) {
		super();
		this.boardNo = boardNo;
		this.memberNo = memberNo;
		this.title = title;
		this.writtenDate = writtenDate;
		this.views = views;
		this.content = content;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
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
	public Date getWrittenDate() {
		return writtenDate;
	}
	public void setWrittenDate(Date writtenDate) {
		this.writtenDate = writtenDate;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", memberNo=" + memberNo + ", title=" + title + ", writtenDate="
				+ writtenDate + ", views=" + views + ", content=" + content + "]";
	}
	
	

}