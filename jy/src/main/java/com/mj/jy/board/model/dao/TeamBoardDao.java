package com.mj.jy.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.mj.jy.board.model.vo.TeamBoard;
import com.mj.jy.board.model.vo.TeamBoardDto;

@Mapper
public interface TeamBoardDao {

	ArrayList<TeamBoardDto> selectBoardList();
	int increaseCount(int bno);
	TeamBoardDto selectBoard(int bno);
	int insertBoard(TeamBoard b);
	int updateBoard(TeamBoard b);
	int deleteBoard(int bno);
	
}
