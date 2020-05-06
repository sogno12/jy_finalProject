package com.mj.jy.businessRoom.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("businessInfo")
public class BusinessInfo {
	
	private int roomNo;
	private String roomName;
	private int roomCount;
	private String position;
	
	public BusinessInfo() {
		
	}
	public BusinessInfo(int roomNo, String roomName, int roomCount, String position) {
		super();
		this.roomNo = roomNo;
		this.roomName = roomName;
		this.roomCount = roomCount;
		this.position = position;
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public int getRoomCount() {
		return roomCount;
	}
	public void setRoomCount(int roomCount) {
		this.roomCount = roomCount;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	@Override
	public String toString() {
		return "BusinessInfo [roomNo=" + roomNo + ", roomName=" + roomName + ", roomCount=" + roomCount + ", position="
				+ position + "]";
	}
	
	
	
}
