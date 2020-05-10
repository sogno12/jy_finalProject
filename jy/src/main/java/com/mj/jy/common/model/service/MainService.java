package com.mj.jy.common.model.service;

import java.util.ArrayList;
import java.util.HashMap;


import com.mj.jy.todolist.model.vo.TodoList;

public interface MainService {

	// 체크선택/해제 시 status : 'N' ->'Y'->'N'
	public int updateTodo(HashMap map);
	
	// 할 일 등록 서비스
	public int insertTodo(HashMap map);
	
	// 할 일 리스트 조회 서비스
	public ArrayList<TodoList> selectTodoList(int memberNo);

}
