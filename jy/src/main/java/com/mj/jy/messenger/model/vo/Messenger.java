package com.mj.jy.messenger.model.vo;

import java.sql.Date;
import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

@Alias("Messenger")
public class Messenger {

	private int messageNo; // 메세지 번호
	private int attachmentNo; // 첨부파일 번호
	private int memberNo; // 받는 사원 멤버번호
	private String originName; //첨부파일 이름
	private String updateName; // 첨부파일 변경이름
	private String name; // 이름 
	private String departmentname; //부서이름
	private String senderNo; // 보내는 사원번호
	private String receiverNo; // 받는 사원번호
	private String title;
	private Timestamp sendTime;
	private Timestamp receiveTime;
	private String content;
	private String status;
	
	public Messenger() {
		
	}

	public Messenger(int messageNo, int attachmentNo, int memberNo, String originName, String updateName, String name,
			String departmentname, String senderNo, String receiverNo, String title, Timestamp sendTime,
			Timestamp receiveTime, String content, String status) {
		super();
		this.messageNo = messageNo;
		this.attachmentNo = attachmentNo;
		this.memberNo = memberNo;
		this.originName = originName;
		this.updateName = updateName;
		this.name = name;
		this.departmentname = departmentname;
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

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getUpdateName() {
		return updateName;
	}

	public void setUpdateName(String updateName) {
		this.updateName = updateName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDepartmentname() {
		return departmentname;
	}

	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
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

	public Timestamp getSendTime() {
		return sendTime;
	}

	public void setSendTime(Timestamp sendTime) {
		this.sendTime = sendTime;
	}

	public Timestamp getReceiveTime() {
		return receiveTime;
	}

	public void setReceiveTime(Timestamp receiveTime) {
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
