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
	
	// 투두리스트 조회 서비스
	@Override
	public ArrayList<TodoList> selectTodoList() {
		return mainDao.selectTodoList();
	}

	@Override
	public int updateTodo(HashMap map) {
		return mainDao.updateTodo(map);
	}

}
