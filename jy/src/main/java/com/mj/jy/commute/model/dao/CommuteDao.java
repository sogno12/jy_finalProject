package com.mj.jy.commute.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.mj.jy.commute.model.vo.CommuteChart;
import com.mj.jy.commute.model.vo.CommuteDto;
import com.mj.jy.commute.model.vo.CommuteViewDto;

@Mapper
public interface CommuteDao {
	
	public ArrayList<CommuteDto> selectCommuteList();
	
	public int insertCommute(CommuteDto c);

	public CommuteViewDto selectClock(String empNo);

	public int insertquit(CommuteDto c);
	
	// 통계 데이터
	ArrayList<CommuteChart> gChartData();
	ArrayList<CommuteChart> hChartData();
	
}
