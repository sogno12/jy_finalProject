package com.mj.jy.disbursement.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("DisType")
public class DisType {

	private int disTypeNo;
	private String type;
	
	
	public DisType() {
	}
	
	public DisType(int disTypeNo, String type) {
		this.disTypeNo = disTypeNo;
		this.type = type;
	}
	public int getDisTypeNo() {
		return disTypeNo;
	}
	public void setDisTypeNo(int disTypeNo) {
		this.disTypeNo = disTypeNo;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "DisType [disTypeNo=" + disTypeNo + ", type=" + type + "]";
	}
	
	
}
