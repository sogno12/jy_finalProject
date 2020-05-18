package com.mj.jy.socketHandler.model.vo;


public class ChatMessage {
	Type type;
	String message;
	String sender;
	int roomNo;
	
	public boolean isMessage() {
		return Type.MESSAGE == type;
	}
	
	public Type getType() {
		return type;
	}

	public void setType(Type type) {
		this.type = type;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}


	
}
