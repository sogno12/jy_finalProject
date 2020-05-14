package com.mj.jy.circular.model.service;

import java.util.List;

import com.mj.jy.circular.model.vo.CircularDto;
import com.mj.jy.reading.model.vo.Reading;

public interface CircularService {
	
	/** sujin1. 로그인 회원에게 해당하는 모든 회람 리스트 읽어오기
	 * @return
	 */
	List<CircularDto> cirAllList(int departmentNo);
	
	/** sujin2. 회람 1개의 상세정보
	 * @return
	 */
	CircularDto cirOneInfo(int circularNo);
	
	/** sujin3. 회람 조회자 리스트
	 * @return
	 */
	List<Reading> cirReadingList(int circularNo);
	
	/** sujin4. 회원이 회람 조회했는지 여부 확인
	 * @param memberNo		회원번호
	 * @param circularNo	회람번호
	 * @return	조회했으면 1개, 조회 안했으면 0개
	 */
	int readOrNot(Reading reading);
	
	/** sujin5. 회원의 첫 조회기록 insert
	 * @param memberNo		회원번호
	 * @param circularNo	회람번호
	 * @return	회람정보 기록
	 */
	int insertReadInfo(Reading reading);

	/** sujin6. 열람하지 않은 회원들의 정보
	 * @param circularNo
	 * @param memberNo
	 * @return
	 */
	List<Reading> notReadingList(int circularNo);

}
