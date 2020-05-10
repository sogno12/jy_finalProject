package com.mj.jy.commute.model.service;

import java.util.ArrayList;

import com.mj.jy.commute.model.vo.CommuteDto;

public interface CommuteService {
	
	// 근태 리스트
	ArrayList<CommuteDto> selectCommuteList();

}
