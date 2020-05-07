package com.mj.jy.todolist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.mj.jy.todolist.model.service.TodoListService;

@Controller
public class TodoListController {
	
	@Autowired
	private TodoListService todoService;
	
	
	

}
