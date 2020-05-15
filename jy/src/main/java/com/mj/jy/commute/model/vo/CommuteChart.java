package com.mj.jy.commute.model.vo;

import org.apache.ibatis.type.Alias;

@Alias("CommuteChart")
public class CommuteChart {
	
	private String month;		// 월
	private int time;			// 월별 근무통계
	private int departmentNo;	// 부서 번호
	
	public CommuteChart() {}

	public CommuteChart(String month, int time, int departmentNo) {
		super();
		this.month = month;
		this.time = time;
		this.departmentNo = departmentNo;
	}

	@Override
	public String toString() {
		return "CommuteChart [month=" + month + ", time=" + time + ", departmentNo=" + departmentNo + "]";
	}

}
