package com.mj.jy.disbursement.model.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

public class DisContentCreateDto {
	private String[] paydate;
	private String[] subjectNo;
	private String[] disContent;
	private String[] client;
	private String[] price;
	private String[] methodNo;
	
	public String[] getPaydate() {
		return paydate;
	}
	public void setPaydate(String[] paydate) {
		this.paydate = paydate;
	}
	public String[] getSubjectNo() {
		return subjectNo;
	}
	public void setSubjectNo(String[] subjectNo) {
		this.subjectNo = subjectNo;
	}
	public String[] getDisContent() {
		return disContent;
	}
	public void setDisContent(String[] disContent) {
		this.disContent = disContent;
	}
	public String[] getClient() {
		return client;
	}
	public void setClient(String[] client) {
		this.client = client;
	}
	public String[] getPrice() {
		return price;
	}
	public void setPrice(String[] price) {
		this.price = price;
	}
	public String[] getMethodNo() {
		return methodNo;
	}
	public void setMethodNo(String[] methodNo) {
		this.methodNo = methodNo;
	}
	
	public List<DisContent> toEtities() {
		List<DisContent> disContents = new ArrayList<>();
		
		for(int i=0; i<this.paydate.length; i++) {
			Optional.ofNullable(toEntity(this.paydate[i], this.disContent[i], this.client[i], this.price[i], this.subjectNo[i], this.methodNo[i]))
				.ifPresent(e -> disContents.add(e));
		}
		return disContents;
	}
	
	private DisContent toEntity(String paydate, String disContent, String client, String price, String subjectNo, String methodNo) {
		try {
			if(paydate != null && !"".equals(paydate)) {
				SimpleDateFormat sdf =  new SimpleDateFormat("dd/mm/yyyy");
				return new DisContent(sdf.parse(paydate), disContent, client, Integer.parseInt(price), Integer.parseInt(subjectNo), Integer.parseInt(methodNo));
			}
		} catch (NumberFormatException | ParseException e) {
			e.printStackTrace();
		}
		return null;
	}
}
