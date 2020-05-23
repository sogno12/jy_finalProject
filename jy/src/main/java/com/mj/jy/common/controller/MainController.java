package com.mj.jy.common.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.google.gson.Gson;
import com.mj.jy.appBox.model.vo.SentAppBoxDto;
import com.mj.jy.board.model.vo.TeamBoardDto;
import com.mj.jy.common.model.service.MainService;
import com.mj.jy.member.model.vo.MemberDto;
import com.mj.jy.todolist.model.vo.TodoList;


@Controller
public class MainController {

	@Autowired
	private MainService mainService;
	
	// 메인화면(공지사항, 결재 진행사항, todolist)
	@RequestMapping("main.do")
	public String goMain(@SessionAttribute("loginUser") MemberDto loginUser, Model model) {

		// 공지사항
		List<TeamBoardDto> bData = mainService.getBoardData(loginUser.getDepartmentNo());
		model.addAttribute("bData", mainService.getBoardData(loginUser.getDepartmentNo()));
		
		// 결재내용
		model.addAttribute("appData", mainService.getApprovalData(loginUser.getMemberNo()));
		
		return "main";
	}
	
	// 할 일 체크/체크해제시 status 값 변경
	@ResponseBody
	@RequestMapping(value="update.todo", produces="application/json; charset=utf-8")
	public String updateTodo(int memberNo, int todoNo, String status) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();

		map.put("memberNo", memberNo);
		map.put("todoNo", todoNo);
		map.put("status", status);
		
		// System.out.println(map);
		
		int result = mainService.updateTodo(map);
		
		return new Gson().toJson(result);
	}
	
	// 할 일 등록
	@ResponseBody
	@RequestMapping("insert.todo")
	public String insertTodo(int memberNo, String title, Date todoDate) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("memberNo", memberNo);
		map.put("title", title);
		map.put("todoDate", todoDate);
		
		int result = mainService.insertTodo(map);
		
		return String.valueOf(result);
	}
	
	// 할 일 조회
	@ResponseBody
	@RequestMapping(value="list.todo", produces="application/json; charset=utf-8")
	public String selectTodoList(int memberNo) {
		
		ArrayList<TodoList> list = mainService.selectTodoList(memberNo);
		
		Gson gson = new Gson();
		
		return gson.toJson(list);
	}
	
}
