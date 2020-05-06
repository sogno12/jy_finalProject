package com.mj.jy.common.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.jy.common.model.service.MainService;
import com.mj.jy.todolist.model.vo.TodoList;

@Controller
public class MainController {

	@Autowired
	private MainService mainService;
	
	// 메인화면(공지사항, 결재 진행사항, todolist)
	@RequestMapping("main.do")
	public String goMain(Model model) {
		
		// 투두리스트 조회
		ArrayList<TodoList> todoList = mainService.selectTodoList();
		
		model.addAttribute("todoList", todoList);
		
		return "main";
	}
}
