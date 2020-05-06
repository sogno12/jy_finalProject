package com.mj.jy.common.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
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
	
	@ResponseBody
	@RequestMapping(value="update.todo", produces="application/json; charset=utf-8")
	public String updateTodo(int todoNo, String status) {
		
		// System.out.println(todoNo);
		// System.out.println(status);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("todoNo", todoNo);
		map.put("status", status);
		
		// System.out.println(map);
		
		int result = mainService.updateTodo(map);
		
		return new Gson().toJson(result);
	}
	
	/*
	@ResponseBody
	@RequestMapping(value="done.todo", produces="application/json; charset=utf-8")
	public String doneTodo(int tdNo) {
		
		// System.out.println(tdNo);
		
		int result = mainService.doneTodo(tdNo);
		
		return new Gson().toJson(result);
	}
	*/
	
	
}
