package com.mj.jy.commute.model.service;

import java.util.ArrayList;

import com.mj.jy.commute.model.vo.CommuteDto;
import com.mj.jy.commute.model.vo.CommuteViewDto;

public interface CommuteService {
	
	ArrayList<CommuteDto> selectCommuteList();
	
	int insertCommute(CommuteDto c);
	
	CommuteViewDto selectClock(String empNo);
	
	int insertquit(CommuteDto c);
}
