package com.mj.jy.member.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("AllMemberDto")
public class AllMemberDto {
	private int memberNo;
	private String name;
	private String deName;
	private String poName;
	private String type;
	
	public AllMemberDto() {
	}
	
	public AllMemberDto(int memberNo, String name, String deName, String poName) {
		this.memberNo = memberNo;
		this.name = name;
		this.deName = deName;
		this.poName = poName;
	}
	
	public AllMemberDto(int memberNo, String name, String deName, String poName, String type) {
		this.memberNo = memberNo;
		this.name = name;
		this.deName = deName;
		this.poName = poName;
		this.type = type;
	}

	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDeName() {
		return deName;
	}
	public void setDeName(String deName) {
		this.deName = deName;
	}
	public String getPoName() {
		return poName;
	}
	public void setPoName(String poName) {
		this.poName = poName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
}
