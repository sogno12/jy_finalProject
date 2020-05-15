package com.mj.jy.board.model.vo;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias("BoardDto")
public class BoardDto {

	private int boardNo;		// 게시글 번호
	private int memberNo;		// 사번
	private String name;		// 이름
	private String title;		// 제목
	private Date writtenDate;	// 작성일
	private int views;			// 조회수
	private String content;		// 내용
	private String departmentName;		// 부서
	private String positionName;// 직책
	
	public BoardDto() {
		
	}

	public BoardDto(int boardNo, String name, String title, Date writtenDate, int views, String content,
			String departmentName, String positionName) {
		super();
		this.boardNo = boardNo;
		this.name = name;
		this.title = title;
		this.writtenDate = writtenDate;
		this.views = views;
		this.content = content;
		this.departmentName = departmentName;
		this.positionName = positionName;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getPositionName() {
		return positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	@Override
	public String toString() {
		return "BoardDto [boardNo=" + boardNo + ", memberNo=" + memberNo + ", name=" + name + ", title=" + title
				+ ", writtenDate=" + writtenDate + ", views=" + views + ", content=" + content + ", departmentName="
				+ departmentName + ", positionName=" + positionName + "]";
	}

	

	

}