package com.mj.jy.common.model;

public class Result<T> {
	private int statusCode;
	private T data;

	public Result(ResponseStatus responseStatus, T data) {
		this.statusCode = responseStatus.getStatus();
		this.data = data;
	}

	public int getStatusCode() {
		return statusCode;
	}

	public T getData() {
		return data;
	}
}
