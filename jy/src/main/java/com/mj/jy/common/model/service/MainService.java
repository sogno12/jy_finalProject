package com.mj.jy.common.model.service;

import java.util.ArrayList;

import com.mj.jy.todolist.model.vo.TodoList;

public interface MainService {

	// 투두리스트 리스트 조회 서비스
	public ArrayList<TodoList> selectTodoList();
}
