package com.mj.jy.alarm.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("CountTypeDto")
public class CountTypeDto {
	
	private int type;
	private String count;
	
	
	public CountTypeDto() {
	}
	public CountTypeDto(int type, String count) {
		this.type = type;
		this.count = count;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	
	

	

}
