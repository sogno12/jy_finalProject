package com.mj.jy.commute.model.service;

import java.util.ArrayList;

import com.mj.jy.commute.model.vo.CommuteChart;
import com.mj.jy.commute.model.vo.CommuteDto;
import com.mj.jy.commute.model.vo.CommuteViewDto;

public interface CommuteService {
	
	// 근태 리스트
	ArrayList<CommuteDto> selectCommuteList();
	
	int insertCommute(CommuteDto c);
	
	CommuteViewDto selectClock(String empNo);
	
	int insertquit(CommuteDto c);
	
	// 통계 데이터
	ArrayList<CommuteChart> gChartData();
	ArrayList<CommuteChart> hChartData();
}
