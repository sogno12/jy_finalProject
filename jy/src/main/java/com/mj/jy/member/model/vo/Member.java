package com.mj.jy.member.model.vo;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias("Member")
public class Member {

	private int memberNo;	// 직원번호
	private int departmentNo;	// 부서번호
	private int positionNo;		// 직책번호
	private String memberPwd;	// 비밀번호
	private Date joinDate;		// 입사일
	private Date resignDate;	// 퇴사일
	private Date promotionDate;	// 진급일
	private String memberName;	// 이름
	private String rrn;			// 주민등록번호
	private String address;		// 주소
	private String phone;		// 휴대폰
	private String email;		// 이메일
	private String status;		// 퇴사유무
	private String empNo;		// 사번
	
	public Member() {}

	public Member(int memberNo, int departmentNo, int positionNo, String memberPwd, Date joinDate, Date resignDate,
			Date promotionDate, String memberName, String rrn, String address, String phone, String email,
			String status, String empNo) {
		super();
		this.memberNo = memberNo;
		this.departmentNo = departmentNo;
		this.positionNo = positionNo;
		this.memberPwd = memberPwd;
		this.joinDate = joinDate;
		this.resignDate = resignDate;
		this.promotionDate = promotionDate;
		this.memberName = memberName;
		this.rrn = rrn;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.status = status;
		this.empNo = empNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getDepartmentNo() {
		return departmentNo;
	}

	public void setDepartmentNo(int departmentNo) {
		this.departmentNo = departmentNo;
	}

	public int getPositionNo() {
		return positionNo;
	}

	public void setPositionNo(int positionNo) {
		this.positionNo = positionNo;
	}

	public String getMemberPwd() {
		return memberPwd;
	}

	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public Date getResignDate() {
		return resignDate;
	}

	public void setResignDate(Date resignDate) {
		this.resignDate = resignDate;
	}

	public Date getPromotionDate() {
		return promotionDate;
	}

	public void setPromotionDate(Date promotionDate) {
		this.promotionDate = promotionDate;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getRrn() {
		return rrn;
	}

	public void setRrn(String rrn) {
		this.rrn = rrn;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getEmpNo() {
		return empNo;
	}

	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}

	@Override
	public String toString() {
		return "Member [memberNo=" + memberNo + ", departmentNo=" + departmentNo + ", positionNo=" + positionNo
				+ ", memberPwd=" + memberPwd + ", joinDate=" + joinDate + ", resignDate=" + resignDate
				+ ", promotionDate=" + promotionDate + ", memberName=" + memberName + ", rrn=" + rrn + ", address="
				+ address + ", phone=" + phone + ", email=" + email + ", status=" + status + ", empNo=" + empNo + "]";
	}
	
	
}
