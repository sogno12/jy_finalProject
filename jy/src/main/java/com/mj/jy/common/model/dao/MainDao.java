package com.mj.jy.common.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mj.jy.appBox.model.vo.SentAppBoxDto;
import com.mj.jy.board.model.vo.TeamBoardDto;
import com.mj.jy.todolist.model.vo.TodoList;

@Mapper
public interface MainDao {
	
	int updateTodo(HashMap map);
	int insertTodo(HashMap map);
	ArrayList<TodoList> selectTodoList(int memberNo);
	List<SentAppBoxDto> getApprovalData(int memberNo);
	List<TeamBoardDto> getBoardData(int departmentNo);
}
