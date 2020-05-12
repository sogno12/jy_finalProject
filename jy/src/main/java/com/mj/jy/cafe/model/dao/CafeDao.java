package com.mj.jy.cafe.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mj.jy.cafe.model.vo.Menu;

@Repository("caDao")
public class CafeDao {
	
	public int insertMenu(SqlSessionTemplate sqlSession, Menu m) {
		
		return sqlSession.insert("cafeMapper.insertMenu", m);
	}
	
	public List<Menu> selectCafe(SqlSessionTemplate sqlSession, int memberNo){
		
		return sqlSession.selectList("cafeMapper.selectCafe", memberNo);
	}

}
