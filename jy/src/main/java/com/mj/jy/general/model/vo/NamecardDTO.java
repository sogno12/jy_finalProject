package com.mj.jy.general.model.vo;

import java.sql.Date;

public class NamecardDTO {
	
	private int namecardNo;
	private int memberNo;
	private String contentType;
	private String departmentName;
	private String positionName;
	private String name;
	private String phone;
	private String email;
	private String empNo;
	
	public NamecardDTO() {
		
	}

	public NamecardDTO(int namecardNo, int memberNo, String contentType, String departmentName, String positionName,
			String name, String phone, String email, String empNo) {
		super();
		this.namecardNo = namecardNo;
		this.memberNo = memberNo;
		this.contentType = contentType;
		this.departmentName = departmentName;
		this.positionName = positionName;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.empNo = empNo;
	}

	public int getNamecardNo() {
		return namecardNo;
	}

	public void setNamecardNo(int namecardNo) {
		this.namecardNo = namecardNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getPositionName() {
		return positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmpNo() {
		return empNo;
	}

	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}

	@Override
	public String toString() {
		return "NamecardDTO [namecardNo=" + namecardNo + ", memberNo=" + memberNo + ", contentType=" + contentType
				+ ", departmentName=" + departmentName + ", positionName=" + positionName + ", name=" + name
				+ ", phone=" + phone + ", email=" + email + ", empNo=" + empNo + "]";
	}
	
	
	
	
	
	

}
