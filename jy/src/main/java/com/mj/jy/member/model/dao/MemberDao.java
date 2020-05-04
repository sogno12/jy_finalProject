package com.mj.jy.member.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.SqlSessionTemplate;

import com.mj.jy.member.model.vo.Member;
import com.mj.jy.member.model.vo.MemberDto;

@Mapper
public interface MemberDao {

	MemberDto loginMember(MemberDto m);
	int insertMember(Member m);
	ArrayList<Member> selectMemberList();
	MemberDto selectMember(String empNo);
	int updateMember(MemberDto m);
	ArrayList<Member> selectListDept();
	ArrayList<Member> selectListPos();
	
	/*
	 * package com.mj.jy.member.model.dao;

		import java.util.ArrayList;
		
		import org.mybatis.spring.SqlSessionTemplate;
		import org.springframework.stereotype.Repository;
		
		import com.mj.jy.member.model.vo.Member;
		import com.mj.jy.member.model.vo.MemberDTO;
		
		@Repository("mDao")
		public class MemberDao {
			
			// 로그인
			public MemberDTO loginMember(SqlSessionTemplate sqlSession, MemberDTO m) {
				return sqlSession.selectOne("memberMapper.loginMember", m);
			}
		
			// 인사카드 등록
			public int insertMember(SqlSessionTemplate sqlSession, Member m) {
				return sqlSession.insert("memberMapper.insertMember", m);
			}
			
			// 전체 직원 조회
			public ArrayList<Member> selectMemberList(SqlSessionTemplate sqlSession) {
				return (ArrayList)sqlSession.selectList("memberMapper.selectMemberList");
			}
			
			// 직원 상세 정보
			public MemberDTO selectMember(SqlSessionTemplate sqlSession, String empNo) {
				return sqlSession.selectOne("memberMapper.selectMember", empNo);
			}
			
			// 직원 정보 수정
			public int updateMember(SqlSessionTemplate sqlSession, MemberDTO m) {
				return sqlSession.update("memberMapper.updateMember", m);
			}
		}

	 */
}
