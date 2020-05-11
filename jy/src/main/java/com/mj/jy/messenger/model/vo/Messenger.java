package com.mj.jy.messenger.model.vo;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias("Messenger")
public class Messenger {

	private int messageNo; // 메세지 번호
	private int attachmentNo; // 첨부파일 번호
	private String originName; //첨부파일 이름
	private String senderNo; // 보내는 사원번호
	private String receiverNo; // 받는 사원번호
	private String title;
	private Date sendTime;
	private Date receiveTime;
	private String content;
	private String status;
	
	public Messenger() {
		
	}

	public Messenger(int messageNo, int attachmentNo, String originName, String senderNo, String receiverNo,
			String title, Date sendTime, Date receiveTime, String content, String status) {
		super();
		this.messageNo = messageNo;
		this.attachmentNo = attachmentNo;
		this.originName = originName;
		this.senderNo = senderNo;
		this.receiverNo = receiverNo;
		this.title = title;
		this.sendTime = sendTime;
		this.receiveTime = receiveTime;
		this.content = content;
		this.status = status;
	}

	public int getMessageNo() {
		return messageNo;
	}

	public void setMessageNo(int messageNo) {
		this.messageNo = messageNo;
	}

	public int getAttachmentNo() {
		return attachmentNo;
	}

	public void setAttachmentNo(int attachmentNo) {
		this.attachmentNo = attachmentNo;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getSendTime() {
		return sendTime;
	}

	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}

	public Date getReceiveTime() {
		return receiveTime;
	}

	public void setReceiveTime(Date receiveTime) {
		this.receiveTime = receiveTime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}


	
}
