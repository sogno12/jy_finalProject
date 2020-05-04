package com.mj.jy.disbursement.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("Method")
public class Method {

	private int methodNo;
	private String method;
	
	
	public Method() {
	}
	public Method(int methodNo, String method) {
		this.methodNo = methodNo;
		this.method = method;
	}
	public int getMethodNo() {
		return methodNo;
	}
	public void setMethodNo(int methodNo) {
		this.methodNo = methodNo;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	@Override
	public String toString() {
		return "Method [methodNo=" + methodNo + ", method=" + method + "]";
	}
	
	
}
