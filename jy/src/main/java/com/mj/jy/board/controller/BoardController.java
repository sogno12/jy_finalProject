package com.mj.jy.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.jy.board.model.service.BoardService;
import com.mj.jy.board.model.vo.Board;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@RequestMapping("boardList.bo")
	public String boardListView(Model model) {
		
		ArrayList<Board> list = boardService.selectBoardList();
		
		// System.out.println(list);
		
		model.addAttribute("list", list);
		
		return "board/boardListView";
	}
	
	
}
