package com.mj.jy.disbursement.model.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.format.annotation.DateTimeFormat;

@Alias("DisContent")
public class DisContent {
	
	private int contentNo;
	private int disbursementNo;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date paydate;
	private String content;
	private String client;
	private int price;
	private int subjectNo;
	private int methodNo;
	
	
	public DisContent() {
	}
	public DisContent(int contentNo, int disbursementNo, Date paydate, String content, String client, int price,
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
	
	
	public DisContent(Date paydate, String content, String client, int price, int subjectNo, int methodNo) {
		super();
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
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
		return "DisContent [contentNo=" + contentNo + ", disbursementNo=" + disbursementNo + ", paydate=" + paydate
				+ ", content=" + content + ", client=" + client + ", price=" + price + ", subjectNo=" + subjectNo
				+ ", methodNo=" + methodNo + "]";
	}
	
	
}
