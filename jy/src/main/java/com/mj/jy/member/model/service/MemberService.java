package com.mj.jy.member.model.service;

import java.util.ArrayList;
import java.util.List;

import com.mj.jy.member.model.vo.Member;
import com.mj.jy.member.model.vo.MemberDto;
import com.mj.jy.namecard.model.vo.PageInfo;

public interface MemberService {
	
	// 로그인 서비스
	MemberDto loginMember(MemberDto m);

	// 인사카드 등록(사원 등록) 서비스
	int insertMember(Member m);
	
	// 직원 전체 조회 서비스
	ArrayList<Member> selectMemberList();
	
	// 직원 상세 정보 서비스
	MemberDto selectMember(String empNo);
	
	// 직원 정보 수정 서비스
	int updateMember(MemberDto m);
	
	// 부서별 주소록
	ArrayList<Member> selectListDept(PageInfo pi);
	
	// 직급별 주소록
	ArrayList<Member> selectListPos(PageInfo pi);
	
	// 수신자 검색
	ArrayList<MemberDto> receiverList();
	
	//페이지 수 
	int getListCount();

	/** sujin1.
	 * @param departmentNo 로그인 유저 부서번호
	 * @return
	 */
	List<MemberDto> getListDept(int departmentNo, PageInfo pi);

	/** sujin2
	 * @param departmentNo 로그인 유저 부서번호
	 * @return
	 */
	int getCountDeptMember(int departmentNo);


	int findMemberNo(Member mem);

}
