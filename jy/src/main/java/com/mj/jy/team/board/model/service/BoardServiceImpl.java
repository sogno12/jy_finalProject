package com.mj.jy.team.board.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.team.board.model.dao.BoardDao;

@Service("bdService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao bdDao;
}
