package com.mj.jy.salary.model.vo;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias("SalaryDto")
public class SalaryDto {
	
	private int salaryNo;			// 급여번호
	private String empNo;			// 사번
	private String memberName;		// 이름
	private String departmentName;		// 부서
	private String positionName;	// 직책
	private Date promotionDate;		// 진급일
	private int stepSum;			// 기본급여(호봉금액)
	private int grade;				// 호봉등급
	private int positionSum;		// 직책금
	private int sum;				// 총 급여
	private Date payDate;			// 지급날짜
	
	public SalaryDto() {}

	public SalaryDto(int salaryNo, String empNo, String memberName, String departmentName, String positionName,
			Date promotionDate, int stepSum, int grade, int positionSum, int sum, Date payDate) {
		super();
		this.salaryNo = salaryNo;
		this.empNo = empNo;
		this.memberName = memberName;
		this.departmentName = departmentName;
		this.positionName = positionName;
		this.promotionDate = promotionDate;
		this.stepSum = stepSum;
		this.grade = grade;
		this.positionSum = positionSum;
		this.sum = sum;
		this.payDate = payDate;
	}

	public int getSalaryNo() {
		return salaryNo;
	}

	public void setSalaryNo(int salaryNo) {
		this.salaryNo = salaryNo;
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

	public String getPositionName() {
		return positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	public Date getPromotionDate() {
		return promotionDate;
	}

	public void setPromotionDate(Date promotionDate) {
		this.promotionDate = promotionDate;
	}

	public int getStepSum() {
		return stepSum;
	}

	public void setStepSum(int stepSum) {
		this.stepSum = stepSum;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public int getPositionSum() {
		return positionSum;
	}

	public void setPositionSum(int positionSum) {
		this.positionSum = positionSum;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	@Override
	public String toString() {
		return "SalaryDto [salaryNo=" + salaryNo + ", empNo=" + empNo + ", memberName=" + memberName
				+ ", departmentName=" + departmentName + ", positionName=" + positionName + ", promotionDate="
				+ promotionDate + ", stepSum=" + stepSum + ", grade=" + grade + ", positionSum=" + positionSum
				+ ", sum=" + sum + ", payDate=" + payDate + "]";
	}

	
	
}
