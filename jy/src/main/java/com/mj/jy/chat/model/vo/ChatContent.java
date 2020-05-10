package com.mj.jy.chat.model.vo;

import java.sql.Date;

public class ChatContent {

	private int chatNo;				// 채팅번호
	private int memberNo;			// 사번
	private int chatRoomNo;			// 채팅방번호
	private Date chatInsertDate;	// 채팅작성일
	private Date chatDeleteDate;	// 채팅삭제일
	private String chatContent;		// 채팅내용
	
	public ChatContent() {
		
	}

	public ChatContent(int chatNo, int memberNo, int chatRoomNo, Date chatInsertDate, Date chatDeleteDate,
			String chatContent) {
		super();
		this.chatNo = chatNo;
		this.memberNo = memberNo;
		this.chatRoomNo = chatRoomNo;
		this.chatInsertDate = chatInsertDate;
		this.chatDeleteDate = chatDeleteDate;
		this.chatContent = chatContent;
	}

	public int getChatNo() {
		return chatNo;
	}

	public void setChatNo(int chatNo) {
		this.chatNo = chatNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getChatRoomNo() {
		return chatRoomNo;
	}

	public void setChatRoomNo(int chatRoomNo) {
		this.chatRoomNo = chatRoomNo;
	}

	public Date getChatInsertDate() {
		return chatInsertDate;
	}

	public void setChatInsertDate(Date chatInsertDate) {
		this.chatInsertDate = chatInsertDate;
	}

	public Date getChatDeleteDate() {
		return chatDeleteDate;
	}

	public void setChatDeleteDate(Date chatDeleteDate) {
		this.chatDeleteDate = chatDeleteDate;
	}

	public String getChatContent() {
		return chatContent;
	}

	public void setChatContent(String chatContent) {
		this.chatContent = chatContent;
	}

	@Override
	public String toString() {
		return "ChatContent [chatNo=" + chatNo + ", memberNo=" + memberNo + ", chatRoomNo=" + chatRoomNo
				+ ", chatInsertDate=" + chatInsertDate + ", chatDeleteDate=" + chatDeleteDate + ", chatContent="
				+ chatContent + "]";
	}
	
}
