package com.mj.jy.businessInfo.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mj.jy.businessRoom.model.vo.BusinessInfo;

@Repository("biDao")
public class BusinessInfoDao {
	
	public BusinessInfo selectbDetailList(SqlSessionTemplate sqlSession, int roomNo) {
		
		return sqlSession.selectOne("biMapper.selectbDetailList", roomNo);
	}

}
