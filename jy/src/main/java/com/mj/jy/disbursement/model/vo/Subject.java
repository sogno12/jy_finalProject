package com.mj.jy.disbursement.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("Subject")
public class Subject {

	private int subjectNo;
	private String subject;
	
	
	public Subject() {
	}
	
	public Subject(int subjectNo, String subject) {
		this.subjectNo = subjectNo;
		this.subject = subject;
	}

	public int getSubjectNo() {
		return subjectNo;
	}
	public void setSubjectNo(int subjectNo) {
		this.subjectNo = subjectNo;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}

	@Override
	public String toString() {
		return "Subject [subjectNo=" + subjectNo + ", subject=" + subject + "]";
	}
	
	
}
