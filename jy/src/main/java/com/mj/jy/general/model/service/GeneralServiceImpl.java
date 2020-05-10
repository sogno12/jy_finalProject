package com.mj.jy.general.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.general.model.dao.GeneralDao;
import com.mj.jy.general.model.vo.NamecardDTO;

@Service("gService")
public class GeneralServiceImpl implements GeneralService{
	
	@Autowired
	private GeneralDao gDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public NamecardDTO selectncDetail(int namecardNo) {
		
		return gDao.selectncDetail(sqlSession, namecardNo);
	}

}
