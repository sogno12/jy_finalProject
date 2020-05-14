package com.mj.jy.cafe.model.service;

import java.util.List;

import com.mj.jy.cafe.model.vo.Menu;

public interface CafeService {
	
	// 카페메뉴 선택
	int insertMenu(Menu m);

	// 주문 리스트 보이기
	List<Menu> selectCafe(int memberNo);
	
	int updateCafe(int memberNo);
}
