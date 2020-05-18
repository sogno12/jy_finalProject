package com.mj.jy.circular.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.mj.jy.circular.model.dao.CircularDao;
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

	@Override
	public List<Reading> notReadingList(int circularNo) {
		
		//회람을 읽었어야하는 회원 리스트
		List<Reading> memList = cirDao.needRadingList(cirDao.cirOneInfo(circularNo));
		
		//조회자 리스트
		List<Reading> reading = cirDao.cirReadingList(circularNo);
		
		List<Reading> notReadingList = new ArrayList<>();
		
		for(int i = 0; i<memList.size(); i++) {
			boolean check = true;
			for(int j = 0; j<reading.size(); j++) {
				if(memList.get(i).getMemberNo() == reading.get(j).getMemberNo()) {
					check = false;
				}
			}
			if(check) {
				notReadingList.add(memList.get(i));
			}
		}
		
		return notReadingList;
	}
}
