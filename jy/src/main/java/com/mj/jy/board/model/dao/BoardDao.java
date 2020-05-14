package com.mj.jy.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.mj.jy.board.model.vo.Board;

@Mapper
public interface BoardDao {

	ArrayList<Board> selectBoardList();
	
}
