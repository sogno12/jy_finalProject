package com.mj.jy.salary.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.mj.jy.salary.model.vo.SalaryDto;

@Mapper
public interface SalaryDao {
	
	// 급여 리스트 조회
	ArrayList<SalaryDto> selectSalaryList();
	
	// 급여 상세 정보 조회
	SalaryDto selectSalary(int salaryNo);

	// 내 급여 정보 조회
	SalaryDto selectMySalary(String empNo);
}
