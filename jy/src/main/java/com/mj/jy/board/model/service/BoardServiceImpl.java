package com.mj.jy.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.board.model.dao.BoardDao;
import com.mj.jy.board.model.vo.Board;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDao boardDao;

	@Override
	public ArrayList<Board> selectBoardList() {
		return boardDao.selectBoardList();
	}
	
}
