package com.mj.jy.cafe.model.vo;

public class Menu {
	
	private int menuNo;
	private String menuName;
	private int count;
	private String type;
	private String menuMoney;
	private int memberNo;
	
	public Menu() {
		
	}

	public Menu(int menuNo, String menuName, int count, String type, String menuMoney, int memberNo) {
		super();
		this.menuNo = menuNo;
		this.menuName = menuName;
		this.count = count;
		this.type = type;
		this.menuMoney = menuMoney;
		this.memberNo = memberNo;
	}

	public int getMenuNo() {
		return menuNo;
	}

	public void setMenuNo(int menuNo) {
		this.menuNo = menuNo;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getMenuMoney() {
		return menuMoney;
	}

	public void setMenuMoney(String menuMoney) {
		this.menuMoney = menuMoney;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	@Override
	public String toString() {
		return "Menu [menuNo=" + menuNo + ", menuName=" + menuName + ", count=" + count + ", type=" + type
				+ ", menuMoney=" + menuMoney + ", memberNo=" + memberNo + "]";
	}
	
	
	
	
}
