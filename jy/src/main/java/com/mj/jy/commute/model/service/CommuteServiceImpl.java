package com.mj.jy.commute.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.commute.model.dao.CommuteDao;
import com.mj.jy.commute.model.vo.CommuteDto;


@Service("cService")
public class CommuteServiceImpl implements CommuteService {

	@Autowired
	private CommuteDao cDao;

	@Override
	public ArrayList<CommuteDto> selectCommuteList() {
		return cDao.selectCommuteList();
	}
}
