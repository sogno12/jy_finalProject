package com.mj.jy.namecard.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.namecard.model.dao.NamecardDao;
import com.mj.jy.namecard.model.vo.Namecard;
import com.mj.jy.namecard.model.vo.PageInfo;

@Service("nService")
public class NamecardServiceImpl implements NamecardService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private NamecardDao nDao;


	/**
	 * 명함신청용 서비스
	 */
	@Override
	public int insertNamecard(Namecard n) {
		
		return nDao.insertNamecard(sqlSession, n);
	}

	@Override
	public Namecard selectNamecard(int namecardNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteNamecard(int namecardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	/**
	 * 명함 신청 리스트 총갯수 조회용 서비스
	 */
	@Override
	public int getNameListCount() {
		return nDao.getNameListCount(sqlSession);
	}

	/**
	 * 명함신청 리스트 조회용 서비스
	 */
	@Override
	public ArrayList<Namecard> selectNameList(PageInfo pi) {
		return nDao.selectNameList(sqlSession, pi);
	}


}
