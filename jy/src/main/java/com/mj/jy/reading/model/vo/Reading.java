package com.mj.jy.reading.model.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("Reading")
public class Reading {
	private int readingNo;		//식별번호
	private int circularNo;		//회람식별번호
	private int memberNo;		//회원식별번호
	private Date date;			//읽은 날짜
	
	private String name;		//회원이름
	private String deName;		//회원부서명
	
	
	public Reading() {
	}


	public Reading(int circularNo, int memberNo) {
		this.circularNo = circularNo;
		this.memberNo = memberNo;
	}

	public Reading(int readingNo, int circularNo, int memberNo, Date date, String name, String deName) {
		this.readingNo = readingNo;
		this.circularNo = circularNo;
		this.memberNo = memberNo;
		this.date = date;
		this.name = name;
		this.deName = deName;
	}

	public int getReadingNo() {
		return readingNo;
	}

	public void setReadingNo(int readingNo) {
		this.readingNo = readingNo;
	}

	public int getCircularNo() {
		return circularNo;
	}

	public void setCircularNo(int circularNo) {
		this.circularNo = circularNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getDeName() {
		return deName;
	}


	public void setDeName(String deName) {
		this.deName = deName;
	}


	@Override
	public String toString() {
		return "Reading [readingNo=" + readingNo + ", circularNo=" + circularNo + ", memberNo=" + memberNo + ", date="
				+ date + ", name=" + name + ", deName=" + deName + "]";
	}



	
}
