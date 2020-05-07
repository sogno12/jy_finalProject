package com.mj.jy.businessInfo.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.businessInfo.model.dao.BusinessInfoDao;
import com.mj.jy.businessRoom.model.vo.BusinessInfo;

@Service("biService")
public class BusinessInfoServiceImpl implements BusinessInfoService{
	
	@Autowired
	private BusinessInfoDao biDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public BusinessInfo selectbDetailList(int roomNo) {
		return biDao.selectbDetailList(sqlSession, roomNo);
	}

}
