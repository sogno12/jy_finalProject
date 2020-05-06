package com.mj.jy.commute.model.service;

import java.util.ArrayList;

import com.mj.jy.commute.model.vo.CommuteDto;

public interface CommuteService {
	
	ArrayList<CommuteDto> selectCommuteList();

}
