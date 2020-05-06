package com.mj.jy.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.member.model.dao.MemberDao;
import com.mj.jy.member.model.vo.Member;
import com.mj.jy.member.model.vo.MemberDto;

@Service("mService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao mDao;
	
	// 로그인 서비스
	@Override
	public MemberDto loginMember(MemberDto m) {
		return mDao.loginMember(m);
	}
	
	// 비밀번호 찾기 서비스
	@Override
	public String searchPwd(String empNo) {
		return mDao.searchPwd(empNo);
	}

	// 인사 카드 등록 서비스
	@Override
	public int insertMember(Member m) {
		return mDao.insertMember(m);
	}

	// 직원 전체 조회 서비스
	@Override
	public ArrayList<Member> selectMemberList() {
		return mDao.selectMemberList();
	}

	// 직원 상세 정보 서비스
	@Override
	public MemberDto selectMember(String empNo) {
		return mDao.selectMember(empNo);
	}

	// 직원 정보 수정 서비스
	@Override
	public int updateMember(MemberDto m) {
		return mDao.updateMember(m);
	}
	
	// 부서별 주소록
	@Override
	public ArrayList<Member> selectListDept() {
		return mDao.selectListDept();
	}

	// 직급별 주소록
	@Override
	public ArrayList<Member> selectListPos() {
		return mDao.selectListPos();
	}

}
