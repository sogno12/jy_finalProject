package com.mj.jy.chat.model.vo;

import java.sql.Date;

public class ChatRoom {

	private int chatRoomNo;			// 채팅방번호
	private int masterNo;			// 방장 사번
	private int memberNo;			// 참여자 사번
	private Date roomCreateDate;	// 방 생성일
	private Date roomDeleteDate;	// 방 삭제일
	private String status;			// 채팅방 상태
	
	public ChatRoom() {
		
	}

	public ChatRoom(int chatRoomNo, int masterNo, int memberNo, Date roomCreateDate, Date roomDeleteDate,
			String status) {
		super();
		this.chatRoomNo = chatRoomNo;
		this.masterNo = masterNo;
		this.memberNo = memberNo;
		this.roomCreateDate = roomCreateDate;
		this.roomDeleteDate = roomDeleteDate;
		this.status = status;
	}

	public int getChatRoomNo() {
		return chatRoomNo;
	}

	public void setChatRoomNo(int chatRoomNo) {
		this.chatRoomNo = chatRoomNo;
	}

	public int getMasterNo() {
		return masterNo;
	}

	public void setMasterNo(int masterNo) {
		this.masterNo = masterNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public Date getRoomCreateDate() {
		return roomCreateDate;
	}

	public void setRoomCreateDate(Date roomCreateDate) {
		this.roomCreateDate = roomCreateDate;
	}

	public Date getRoomDeleteDate() {
		return roomDeleteDate;
	}

	public void setRoomDeleteDate(Date roomDeleteDate) {
		this.roomDeleteDate = roomDeleteDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "ChatRoom [chatRoomNo=" + chatRoomNo + ", masterNo=" + masterNo + ", memberNo=" + memberNo
				+ ", roomCreateDate=" + roomCreateDate + ", roomDeleteDate=" + roomDeleteDate + ", status=" + status
				+ "]";
	}
	
	
	
}
