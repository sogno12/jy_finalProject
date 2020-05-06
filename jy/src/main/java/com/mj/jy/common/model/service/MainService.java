package com.mj.jy.common.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.mj.jy.todolist.model.vo.TodoList;

public interface MainService {

	// 투두리스트 리스트 조회 서비스
	public ArrayList<TodoList> selectTodoList();
	
	// 체크해제 시 status : 'N' ->'Y'
	public int updateTodo(HashMap map);
	
	// 체크 시 status : 'Y' ->'N'
	// public int doneTodo(int tdNo);
}
