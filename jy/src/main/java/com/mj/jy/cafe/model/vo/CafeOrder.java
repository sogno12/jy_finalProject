package com.mj.jy.cafe.model.vo;

public class CafeOrder {
	
	private int orderNo;
	private int memberNo;
	private int paymentNo;
	
	public CafeOrder() {
		
	}

	public CafeOrder(int orderNo, int memberNo, int paymentNo) {
		super();
		this.orderNo = orderNo;
		this.memberNo = memberNo;
		this.paymentNo = paymentNo;
	
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getPaymentNo() {
		return paymentNo;
	}

	public void setPaymentNo(int paymentNo) {
		this.paymentNo = paymentNo;
	}


	@Override
	public String toString() {
		return "CafeOrder [orderNo=" + orderNo + ", memberNo=" + memberNo + ", paymentNo=" + paymentNo + 
				 "]";
	}
	
	
	

}
