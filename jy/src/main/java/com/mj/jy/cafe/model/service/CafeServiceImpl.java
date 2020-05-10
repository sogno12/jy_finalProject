package com.mj.jy.cafe.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.cafe.model.dao.CafeDao;
import com.mj.jy.cafe.model.vo.Menu;

@Service("caService")
public class CafeServiceImpl implements CafeService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private CafeDao caDao;

	/**
	 * 카페메뉴 선택
	 */
	@Override
	public int insertMenu(Menu m) {
		
		return caDao.insertMenu(sqlSession, m);
	}

}
