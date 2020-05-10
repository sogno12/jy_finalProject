package com.mj.jy.cafe.model.vo;

public class Payment {
	
	private int paymentNo;
	private String status;
	private String statusDate;
	
	public Payment() {
		
	}

	public Payment(int paymentNo, String status, String statusDate) {
		super();
		this.paymentNo = paymentNo;
		this.status = status;
		this.statusDate = statusDate;
	}

	public int getPaymentNo() {
		return paymentNo;
	}

	public void setPaymentNo(int paymentNo) {
		this.paymentNo = paymentNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStatusDate() {
		return statusDate;
	}

	public void setStatusDate(String statusDate) {
		this.statusDate = statusDate;
	}

	@Override
	public String toString() {
		return "Payment [paymentNo=" + paymentNo + ", status=" + status + ", statusDate=" + statusDate + "]";
	}
	

}
