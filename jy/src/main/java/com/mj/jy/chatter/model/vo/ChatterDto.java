package com.mj.jy.chatter.model.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("ChatterDto")
public class ChatterDto {
	int chatterNo;
	String senderNo;
	String receiverNo;
	Date createDate;
	String content;
	String senderName;
	String receiverName;
	String status;
	
	
	public ChatterDto() {
	}


	public ChatterDto(String senderNo, String receiverNo) {
		this.senderNo = senderNo;
		this.receiverNo = receiverNo;
	}


	public ChatterDto(int chatterNo, String senderNo, String receiverNo, Date createDate, String content,
			String senderName, String receiverName, String status) {
		this.chatterNo = chatterNo;
		this.senderNo = senderNo;
		this.receiverNo = receiverNo;
		this.createDate = createDate;
		this.content = content;
		this.senderName = senderName;
		this.receiverName = receiverName;
		this.status = status;
	}


	public int getChatterNo() {
		return chatterNo;
	}


	public void setChatterNo(int chatterNo) {
		this.chatterNo = chatterNo;
	}


	public String getSenderNo() {
		return senderNo;
	}


	public void setSenderNo(String senderNo) {
		this.senderNo = senderNo;
	}


	public String getReceiverNo() {
		return receiverNo;
	}


	public void setReceiverNo(String receiverNo) {
		this.receiverNo = receiverNo;
	}


	public Date getCreateDate() {
		return createDate;
	}


	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getSenderName() {
		return senderName;
	}


	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}


	public String getReceiverName() {
		return receiverName;
	}


	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "ChatterDto [chatterNo=" + chatterNo + ", senderNo=" + senderNo + ", receiverNo=" + receiverNo
				+ ", createDate=" + createDate + ", content=" + content + ", senderName=" + senderName
				+ ", receiverName=" + receiverName + ", status=" + status + "]";
	}
	
	
	
	
	
}
