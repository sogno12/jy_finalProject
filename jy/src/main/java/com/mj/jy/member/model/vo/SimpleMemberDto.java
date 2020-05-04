package com.mj.jy.member.model.vo;

public class SimpleMemberDto {
	private int memberNo;
	private String name;
	
	public SimpleMemberDto(AllMemberDto member) {
		this.memberNo = member.getMemberNo();
		this.name = member.getName();
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
	
}
