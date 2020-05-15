package com.mj.jy.board.model.service;

import java.util.ArrayList;

import com.mj.jy.board.model.vo.TeamBoard;
import com.mj.jy.board.model.vo.TeamBoardDto;
import com.mj.jy.team.board.model.vo.Board;

public interface TeamBoardService {

	ArrayList<TeamBoardDto> selectBoardList();
	int increaseCount(int bno);
	TeamBoardDto selectBoard(int bno);
	int insertBoard(TeamBoard b);
	int updateBoard(TeamBoard b);
	int deleteBoard(int bno);
	
}
