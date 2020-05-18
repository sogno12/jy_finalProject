package com.mj.jy.namecard.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mj.jy.businessRoom.model.vo.BusinessDTO;
import com.mj.jy.general.model.vo.NamecardDTO;
import com.mj.jy.namecard.model.vo.Namecard;
import com.mj.jy.namecard.model.vo.PageInfo;

@Repository("nDao")
public class NamecardDao {
	
	/** 명함신청용 dao
	 * @param sqlSession
	 * @param n
	 * @return
	 */
	public int insertNamecard(SqlSessionTemplate sqlSession, Namecard n) {
		return sqlSession.insert("namecardMapper.insertNamecard", n);
	}

	public int getNameListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("namecardMapper.getNameListCount");
	}
	
	public int getBroomListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("namecardMapper.getBroomListCount");
	}
	
	public ArrayList<Namecard> selectNameList(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("namecardMapper.selectNameList", null, rowBounds);
		
	}
	
	public int nameUpdate(SqlSessionTemplate sqlSession, int namecardNo) {
		
		return sqlSession.update("namecardMapper.nameUpdate", namecardNo);
	}
	
	public ArrayList<BusinessDTO> selectBroomList(SqlSessionTemplate sqlSession, PageInfo pi){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("namecardMapper.selectBroomList", null, rowBounds);
	}

	public int updateNameAlarm(SqlSessionTemplate sqlSession, int namecardNo) {
		return sqlSession.update("namecardMapper.updateNameAlarm", namecardNo);
	}
	
	// 명함 신청 리스트 총 갯수 조회용 서비스(멤버용)
	public int getNameListCountMem(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.selectOne("namecardMapper.selectNamecardListMem", memberNo);
	}
	
	// 회의실예약 리스트 총갯수 조회(멤버용)
	public int getBroomListCountMem(SqlSessionTemplate sqlSession, int memberNo) {
		return sqlSession.selectOne("namecardMapper.selectBusinessListMem", memberNo);
	}
	
	// 명함리스트 멤버용
	
	public ArrayList<Namecard> selectNameListMem(SqlSessionTemplate sqlSession, PageInfo pi, int memberNo){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("namecardMapper.selectNameListMem", memberNo, rowBounds);
	}
	
	// 회의실리스트 멤버용
	
	public ArrayList<BusinessDTO> selectBroomListMem(SqlSessionTemplate sqlSession, PageInfo pi, int memberNo){
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("namecardMapper.selectBroomListMem", memberNo, rowBounds);
		}
}
