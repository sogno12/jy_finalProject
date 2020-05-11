package com.mj.jy.chat.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("Dept")
public class Dept {

	private int departmentNo;			// 부서번호
	private String name;	// 부서명
	private String extension;		// 내선번호
	
	public Dept() {
		
	}

	public Dept(int departmentNo, String name, String extension) {
		super();
		this.departmentNo = departmentNo;
		this.name = name;
		this.extension = extension;
	}

	public int getDepartmentNo() {
		return departmentNo;
	}

	public void setDepartmentNo(int departmentNo) {
		this.departmentNo = departmentNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getExtension() {
		return extension;
	}

	public void setExtension(String extension) {
		this.extension = extension;
	}

	@Override
	public String toString() {
		return "Dept [departmentNo=" + departmentNo + ", name=" + name + ", extension=" + extension + "]";
	}

	
	
}
