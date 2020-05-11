package com.mj.jy.namecard.model.service;

import java.util.ArrayList;

import com.mj.jy.businessRoom.model.vo.BusinessDTO;
import com.mj.jy.namecard.model.vo.Namecard;
import com.mj.jy.namecard.model.vo.PageInfo;

public interface NamecardService {
	
	// 명함 신청 리스트 총 갯수 조회용 서비스
	int getNameListCount();
	
	// 명함 신청 리스트 조회용 서비스
	ArrayList<Namecard> selectNameList(PageInfo pi);
	
	// 명함 신청 서비스
	int insertNamecard(Namecard n);
	
	// 명함 업데이트
	int nameUpdate(int namecardNo);
	
	// 회의실예약 리스트 총갯수 조회
	int getBroomListCount();
	
	ArrayList<BusinessDTO> selectBroomList(PageInfo pi);
}
