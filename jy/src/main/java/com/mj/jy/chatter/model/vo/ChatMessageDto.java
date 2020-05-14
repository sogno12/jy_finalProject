package com.mj.jy.chatter.model.vo;

public class ChatMessageDto {
	
	public enum MessageType{
		ENTER, TALK
	}
	
	private MessageType type;	// 메세지 타입
	private int roomNo;			// 방번호
	private int sender;			// 메세지 보낸사람
	private String message;		// 메세지
	
	public ChatMessageDto() {
	}
	
	public ChatMessageDto(MessageType type, int roomNo, int sender) {
		this.type = type;
		this.roomNo = roomNo;
		this.sender = sender;
	}

	public ChatMessageDto(MessageType type, int roomNo, int sender, String message) {
		this.type = type;
		this.roomNo = roomNo;
		this.sender = sender;
		this.message = message;
	}
	
	
	public MessageType getType() {
		return type;
	}
	public void setType(MessageType type) {
		this.type = type;
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public int getSender() {
		return sender;
	}
	public void setSender(int sender) {
		this.sender = sender;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

	
}
