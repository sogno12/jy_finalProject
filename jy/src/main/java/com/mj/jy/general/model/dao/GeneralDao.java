package com.mj.jy.general.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mj.jy.general.model.vo.NamecardDTO;

@Repository("gDao")
public class GeneralDao {
	
	public NamecardDTO selectncDetail(SqlSessionTemplate sqlSession, int namecardNo) {
		
		return sqlSession.selectOne("generalMapper.selectncDetail", namecardNo);
	}

}
