package com.mj.jy.common.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.mj.jy.appBox.model.vo.SentAppBoxDto;
import com.mj.jy.todolist.model.vo.TodoList;

public interface MainService {
	
	// 체크선택/해제 시 status : 'N' ->'Y'->'N'
	public int updateTodo(HashMap map);
	
	// 할 일 등록 서비스
	public int insertTodo(HashMap map);
	
	// 할 일 리스트 조회 서비스
	public ArrayList<TodoList> selectTodoList(int memberNo);

	/** sujin1. 결재정보 가져오기
	 * @param memberNo
	 * @return
	 */
	List<SentAppBoxDto> getApprovalData(int memberNo);
}
