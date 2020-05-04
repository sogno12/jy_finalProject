package com.mj.jy.circular.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mj.jy.circular.model.vo.CircularDto;
import com.mj.jy.reading.model.vo.Reading;

@Mapper
public interface CircularDao {

	public List<CircularDto> cirAllList(int departmentNo);
	public CircularDto cirOneInfo(int circularNo);
	public List<Reading> cirReadingList(int circularNo);
	public int readOrNot(Reading reading);
	public int insertReadInfo(Reading reading);
	
	
	
//	@Autowired
//	private SqlSessionTemplate sqlsession;
//	
//	// SqlSession 이용해서 Statement 호출하는게 Ibatis 방식
//	public List<CircularDto> cirAllList(int departmentNo) {
//		return sqlsession.selectList("circularMapper.cirAllList", departmentNo);
//	}
//
//	public CircularDto cirOneInfo(int circularNo) {
//		return sqlsession.selectOne("circularMapper.cirOneInfo", circularNo);
//	}
//
//	public List<Reading> cirReadingList(int circularNo) {
//		return sqlsession.selectList("circularMapper.cirReadingList", circularNo);
//	}
//
//	public int readOrNot(Reading reading) {
//		return sqlsession.selectOne("circularMapper.readOrNot", reading);
//	}
//
//	public int insertReadInfo(Reading reading) {
//		return sqlsession.insert("circularMapper.insertReadInfo", reading);
//	}

}
