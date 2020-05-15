package com.mj.jy.board.model.service;

import java.util.ArrayList;

import com.mj.jy.board.model.vo.Board;
import com.mj.jy.board.model.vo.BoardDto;

public interface BoardService {

	ArrayList<BoardDto> selectBoardList();
	int increaseCount(int bno);
	BoardDto selectBoard(int bno);
	int insertBoard(Board b);
	int updateBoard(Board b);
	int deleteBoard(int bno);
	
}
