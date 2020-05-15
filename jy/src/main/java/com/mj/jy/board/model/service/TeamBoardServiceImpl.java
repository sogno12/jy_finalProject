package com.mj.jy.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.board.model.dao.TeamBoardDao;
import com.mj.jy.board.model.vo.TeamBoard;
import com.mj.jy.board.model.vo.TeamBoardDto;

@Service("boardService")
public class TeamBoardServiceImpl implements TeamBoardService {
	
	@Autowired
	private TeamBoardDao boardDao;

	@Override
	public ArrayList<TeamBoardDto> selectBoardList() {
		return boardDao.selectBoardList();
	}

	@Override
	public int increaseCount(int bno) {
		return boardDao.increaseCount(bno);
	}

	@Override
	public TeamBoardDto selectBoard(int bno) {
		return boardDao.selectBoard(bno);
	}

	@Override
	public int insertBoard(TeamBoard b) {
		return boardDao.insertBoard(b);
	}

	@Override
	public int updateBoard(TeamBoard b) {
		return boardDao.updateBoard(b);
	}

	@Override
	public int deleteBoard(int bno) {
		return boardDao.deleteBoard(bno);
	}
	
}
