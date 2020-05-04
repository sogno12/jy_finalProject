package com.mj.jy.circular.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.circular.model.dao.CircularDao;
import com.mj.jy.circular.model.vo.Circular;
import com.mj.jy.circular.model.vo.CircularDto;
import com.mj.jy.reading.model.vo.Reading;

@Service
public class CircularServiceImpl implements CircularService {

	private final CircularDao cirDao;
	
	public CircularServiceImpl(CircularDao cirDao) {
		this.cirDao = cirDao;
	}
	
	@Override
	public List<CircularDto> cirAllList(int departmentNo) {
		return cirDao.cirAllList(departmentNo);
	}

	@Override
	public CircularDto cirOneInfo(int circularNo) {
		return cirDao.cirOneInfo(circularNo);
	}

	@Override
	public List<Reading> cirReadingList(int circularNo) {
		return cirDao.cirReadingList(circularNo);
	}

	@Override
	public int readOrNot(Reading reading) {
		return cirDao.readOrNot(reading);
	}

	@Override
	public int insertReadInfo(Reading reading) {
		return cirDao.insertReadInfo(reading);
	}
}
