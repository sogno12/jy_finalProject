package com.mj.jy.cafe.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mj.jy.cafe.model.vo.Menu;

@Repository("caDao")
public class CafeDao {
	
	public int insertMenu(SqlSessionTemplate sqlSession, Menu m) {
		
		return sqlSession.insert("cafeMapper.insertMenu", m);
	}

}
