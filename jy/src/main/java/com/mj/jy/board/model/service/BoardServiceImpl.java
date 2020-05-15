package com.mj.jy.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.board.model.dao.BoardDao;
import com.mj.jy.board.model.vo.Board;
import com.mj.jy.board.model.vo.BoardDto;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDao boardDao;

	@Override
	public ArrayList<BoardDto> selectBoardList() {
		return boardDao.selectBoardList();
	}

	@Override
	public int increaseCount(int bno) {
		return boardDao.increaseCount(bno);
	}

	@Override
	public BoardDto selectBoard(int bno) {
		return boardDao.selectBoard(bno);
	}

	@Override
	public int insertBoard(Board b) {
		return boardDao.insertBoard(b);
	}

	@Override
	public int updateBoard(Board b) {
		return boardDao.updateBoard(b);
	}

	@Override
	public int deleteBoard(int bno) {
		return boardDao.deleteBoard(bno);
	}
	
}
