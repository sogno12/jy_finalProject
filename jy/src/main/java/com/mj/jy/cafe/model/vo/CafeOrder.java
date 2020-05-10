package com.mj.jy.cafe.model.vo;

public class CafeOrder {
	
	private int orderNo;
	private int memberNo;
	private int paymentNo;
	private String money;
	
	public CafeOrder() {
		
	}

	public CafeOrder(int orderNo, int memberNo, int paymentNo, String money) {
		super();
		this.orderNo = orderNo;
		this.memberNo = memberNo;
		this.paymentNo = paymentNo;
		this.money = money;
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

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	@Override
	public String toString() {
		return "CafeOrder [orderNo=" + orderNo + ", memberNo=" + memberNo + ", paymentNo=" + paymentNo + ", money="
				+ money + "]";
	}
	
	
	

}
