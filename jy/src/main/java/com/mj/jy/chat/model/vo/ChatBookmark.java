package com.mj.jy.chat.model.vo;

public class ChatBookmark {

	private int chatRoomNo;	// 채팅방 번호
	private int memberNo;	// 사번
	private String status;	// 북마크 상태
	
	public ChatBookmark() {
		
	}

	public ChatBookmark(int chatRoomNo, int memberNo, String status) {
		super();
		this.chatRoomNo = chatRoomNo;
		this.memberNo = memberNo;
		this.status = status;
	}

	public int getChatRoomNo() {
		return chatRoomNo;
	}

	public void setChatRoomNo(int chatRoomNo) {
		this.chatRoomNo = chatRoomNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "ChatBookmark [chatRoomNo=" + chatRoomNo + ", memberNo=" + memberNo + ", status=" + status + "]";
	}
	
}
