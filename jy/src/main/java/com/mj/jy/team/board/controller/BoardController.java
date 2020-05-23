package com.mj.jy.team.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.jy.team.board.model.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService bdService;
	
	@RequestMapping("board.bd")
	public String selectBoard() {
		return "teamboard/board";
	}
}
