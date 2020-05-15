package com.mj.jy.namecard.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.businessRoom.model.vo.BusinessDTO;
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
		int result = nDao.insertNamecard(sqlSession, n);
		
		int namecardNo = 0;
		if(result > 0) {
			namecardNo = n.getNamecardNo();
		}
		
		return namecardNo;
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

	/**
	 * 명함신청 업데이트
	 */
	@Override
	public int nameUpdate(int namecardNo) {
		
		return nDao.nameUpdate(sqlSession, namecardNo);
	}


	/**
	 * 회의실 리스트 총 갯수 
	 */
	@Override
	public int getBroomListCount() {
		return nDao.getBroomListCount(sqlSession);
	}

	// 회의실 리스트 조회
	@Override
	public ArrayList<BusinessDTO> selectBroomList(PageInfo pi) {
		return nDao.selectBroomList(sqlSession, pi);
	}

	// 명함 알람
	@Override
	public int updateNameAlarm(int namecardNo) {
		return nDao.updateNameAlarm(sqlSession, namecardNo);
	}


	// 명함 신청 리스트 총 갯수 조회용 서비스(멤버용)
	@Override
	public int getNameListCountMem(int memberNo) {
		return nDao.getNameListCountMem(sqlSession, memberNo);
	}

	// 회의실예약 리스트 총갯수 조회(멤버용)
	@Override
	public int getBroomListCountMem(int memberNo) {
		return nDao.getBroomListCountMem(sqlSession, memberNo);
	}

	@Override
	public ArrayList<Namecard> selectNameListMem(PageInfo pi, int memberNo) {
		return nDao.selectNameListMem(sqlSession, pi, memberNo);
	}


	@Override
	public ArrayList<BusinessDTO> selectBroomListMem(PageInfo pi, int memberNo) {
		return nDao.selectBroomListMem(sqlSession, pi, memberNo);
	}


}
