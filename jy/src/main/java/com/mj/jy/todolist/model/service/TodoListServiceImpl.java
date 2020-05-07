package com.mj.jy.todolist.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.todolist.model.dao.TodoListDao;

@Service("todoService")
public class TodoListServiceImpl implements TodoListService {

	@Autowired
	private TodoListDao todoDao;
}
