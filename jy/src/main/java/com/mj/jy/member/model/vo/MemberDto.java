package com.mj.jy.member.model.vo;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias("MemberDto")
public class MemberDto {
	
	private String empNo;			// 사번
	private String memberName;		// 이름
	private String departmentName;	// 부서
	private int departmentNo;		// 부서번호
	private String positionName;	// 직책
	private int positionNo;			// 직책 번호
	private String phone;			// 연락처
	private Date joinDate;			// 입사일
	private Date promotionDate;		// 진급일
	private Date resignDate;		// 퇴사일
	private String address;			// 주소
	private String email;			// 이메일
	private String extension;		// 내선번호
	private String rrn;				// 주민등록번호
	private String pwd;				// 비밀번호
	private int memberNo;			// 직원 번호
	
	public MemberDto() {}

	public MemberDto(String empNo, String memberName, String departmentName, int departmentNo, String positionName,
			int positionNo, String phone, Date joinDate, Date promotionDate, Date resignDate, String address,
			String email, String extension, String rrn, String pwd, int memberNo) {
		super();
		this.empNo = empNo;
		this.memberName = memberName;
		this.departmentName = departmentName;
		this.departmentNo = departmentNo;
		this.positionName = positionName;
		this.positionNo = positionNo;
		this.phone = phone;
		this.joinDate = joinDate;
		this.promotionDate = promotionDate;
		this.resignDate = resignDate;
		this.address = address;
		this.email = email;
		this.extension = extension;
		this.rrn = rrn;
		this.pwd = pwd;
		this.memberNo = memberNo;
	}

	public String getEmpNo() {
		return empNo;
	}

	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public int getDepartmentNo() {
		return departmentNo;
	}

	public void setDepartmentNo(int departmentNo) {
		this.departmentNo = departmentNo;
	}

	public String getPositionName() {
		return positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	public int getPositionNo() {
		return positionNo;
	}

	public void setPositionNo(int positionNo) {
		this.positionNo = positionNo;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public Date getPromotionDate() {
		return promotionDate;
	}

	public void setPromotionDate(Date promotionDate) {
		this.promotionDate = promotionDate;
	}

	public Date getResignDate() {
		return resignDate;
	}

	public void setResignDate(Date resignDate) {
		this.resignDate = resignDate;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getExtension() {
		return extension;
	}

	public void setExtension(String extension) {
		this.extension = extension;
	}

	public String getRrn() {
		return rrn;
	}

	public void setRrn(String rrn) {
		this.rrn = rrn;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	@Override
	public String toString() {
		return "MemberDTO [empNo=" + empNo + ", memberName=" + memberName + ", departmentName=" + departmentName
				+ ", departmentNo=" + departmentNo + ", positionName=" + positionName + ", positionNo=" + positionNo
				+ ", phone=" + phone + ", joinDate=" + joinDate + ", promotionDate=" + promotionDate + ", resignDate="
				+ resignDate + ", address=" + address + ", email=" + email + ", extension=" + extension + ", rrn=" + rrn
				+ "]";
	}
}
