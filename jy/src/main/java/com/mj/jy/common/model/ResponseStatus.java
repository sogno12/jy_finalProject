package com.mj.jy.common.model;

public enum ResponseStatus {
	SUCCESS(200, "성공"),
	NOT_FOUND(404, "찾을수 없음"),
	FAILD(500, "실패");
	
	private int status;
	private String description;
	
	private ResponseStatus(int status, String description) {
		this.status = status;
		this.description = description;
	}

	public int getStatus() {
		return status;
	}

	public String getDescription() {
		return description;
	}
}
