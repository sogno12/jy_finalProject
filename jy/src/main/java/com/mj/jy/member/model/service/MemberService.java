package com.mj.jy.member.model.service;

import java.util.ArrayList;

import com.mj.jy.member.model.vo.Member;
import com.mj.jy.member.model.vo.MemberDto;

public interface MemberService {
	
	// 로그인 서비스
	MemberDto loginMember(MemberDto m);
	
	// 비밀번호 찾기 서비스
	String searchPwd(String empNo);

	// 인사카드 등록(사원 등록) 서비스
	int insertMember(Member m);
	
	// 직원 전체 조회 서비스
	ArrayList<Member> selectMemberList();
	
	// 직원 상세 정보 서비스
	MemberDto selectMember(String empNo);
	
	// 직원 정보 수정 서비스
	int updateMember(MemberDto m);
	
	// 부서별 주소록
	ArrayList<Member> selectListDept();
	
	// 직급별 주소록
	ArrayList<Member> selectListPos();

}
