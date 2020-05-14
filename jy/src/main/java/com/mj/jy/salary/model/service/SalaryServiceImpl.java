package com.mj.jy.salary.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.salary.model.dao.SalaryDao;
import com.mj.jy.salary.model.vo.SalaryDto;

@Service("saService")
public class SalaryServiceImpl implements SalaryService {

	@Autowired
	private SalaryDao saDao;

	// 급여 리스트 조회
	@Override
	public ArrayList<SalaryDto> selectSalaryList() {
		return saDao.selectSalaryList();
	}

	// 급여 상세 정보 조회
	@Override
	public SalaryDto selectSalary(int salaryNo) {
		return saDao.selectSalary(salaryNo);
	}
	
	// 나의 급여 조회
	@Override
	public SalaryDto selectMySalary(String empNo) {
		return saDao.selectMySalary(empNo);
	}
}
