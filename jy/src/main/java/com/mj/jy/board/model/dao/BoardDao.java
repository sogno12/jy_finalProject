package com.mj.jy.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.mj.jy.board.model.vo.Board;
import com.mj.jy.board.model.vo.BoardDto;

@Mapper
public interface BoardDao {

	ArrayList<BoardDto> selectBoardList();
	int increaseCount(int bno);
	BoardDto selectBoard(int bno);
	int insertBoard(Board b);
	int updateBoard(Board b);
	int deleteBoard(int bno);
	
}
