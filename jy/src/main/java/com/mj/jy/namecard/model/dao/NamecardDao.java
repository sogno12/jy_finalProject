package com.mj.jy.namecard.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mj.jy.businessRoom.model.vo.BusinessRoom;
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
	
	public ArrayList<Namecard> selectNameList(SqlSessionTemplate sqlSession, PageInfo pi){
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("namecardMapper.selectNameList", null, rowBounds);
		
	}
	
}
