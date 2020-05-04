package com.mj.jy.appBox.model.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("DisContentDto")
public class DisContentDto {

	private int contentNo;
	private int disbursementNo;
	private Date paydate;
	private String content;
	private String client;
	private String price;
	private int subjectNo;
	private int methodNo;
	
	
	public DisContentDto() {
	}
	public DisContentDto(int contentNo, int disbursementNo, Date paydate, String content, String client, String price,
			int subjectNo, int methodNo) {
		this.contentNo = contentNo;
		this.disbursementNo = disbursementNo;
		this.paydate = paydate;
		this.content = content;
		this.client = client;
		this.price = price;
		this.subjectNo = subjectNo;
		this.methodNo = methodNo;
	}
	public int getContentNo() {
		return contentNo;
	}
	public void setContentNo(int contentNo) {
		this.contentNo = contentNo;
	}
	public int getDisbursementNo() {
		return disbursementNo;
	}
	public void setDisbursementNo(int disbursementNo) {
		this.disbursementNo = disbursementNo;
	}
	public Date getPaydate() {
		return paydate;
	}
	public void setPaydate(Date paydate) {
		this.paydate = paydate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getClient() {
		return client;
	}
	public void setClient(String client) {
		this.client = client;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public int getSubjectNo() {
		return subjectNo;
	}
	public void setSubjectNo(int subjectNo) {
		this.subjectNo = subjectNo;
	}
	public int getMethodNo() {
		return methodNo;
	}
	public void setMethodNo(int methodNo) {
		this.methodNo = methodNo;
	}
	@Override
	public String toString() {
		return "DisContentDto [contentNo=" + contentNo + ", disbursementNo=" + disbursementNo + ", paydate=" + paydate
				+ ", content=" + content + ", client=" + client + ", price=" + price + ", subjectNo=" + subjectNo
				+ ", methodNo=" + methodNo + "]";
	}
	
	
	
}
