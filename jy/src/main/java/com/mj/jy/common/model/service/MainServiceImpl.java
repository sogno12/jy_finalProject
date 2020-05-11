package com.mj.jy.common.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.common.model.dao.MainDao;
import com.mj.jy.todolist.model.vo.TodoList;

@Service("mainService")
public class MainServiceImpl implements MainService {

	@Autowired
	private MainDao mainDao;

	// 체크선택/해제 시 status : 'N' ->'Y'->'N'
	@Override
	public int updateTodo(HashMap map) {
		return mainDao.updateTodo(map);
	}

	// 할 일 등록 서비스
	@Override
	public int insertTodo(HashMap map) {
		return mainDao.insertTodo(map);
	}
	
	// 할 일 조회 서비스
	@Override
	public ArrayList<TodoList> selectTodoList(int memberNo) {
		return mainDao.selectTodoList(memberNo);
	}

}
