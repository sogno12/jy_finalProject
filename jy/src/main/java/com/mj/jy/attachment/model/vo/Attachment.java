package com.mj.jy.attachment.model.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("Attachment")
public class Attachment {

	private int attachmentNo;
	private Date createDate;
	private String originName;
	private String updateName;
	private int folderNo;
	
	
	public Attachment() {
	}
	
	public Attachment(String originName, String updateName, int folderNo) {
		this.originName = originName;
		this.updateName = updateName;
		this.folderNo = folderNo;
	}

	public Attachment(int attachmentNo, Date createDate, String originName, String updateName, int folderNo) {
		this.attachmentNo = attachmentNo;
		this.createDate = createDate;
		this.originName = originName;
		this.updateName = updateName;
		this.folderNo = folderNo;
	}
	public int getAttachmentNo() {
		return attachmentNo;
	}
	public void setAttachmentNo(int attachmentNo) {
		this.attachmentNo = attachmentNo;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
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
	public int getFolderNo() {
		return folderNo;
	}
	public void setFolderNo(int folderNo) {
		this.folderNo = folderNo;
	}
	
	
	
}
