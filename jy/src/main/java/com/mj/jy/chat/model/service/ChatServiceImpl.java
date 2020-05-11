package com.mj.jy.chat.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.chat.model.dao.ChatDao;
import com.mj.jy.chat.model.vo.Dept;

@Service("chatService")
public class ChatServiceImpl implements ChatService {

	@Autowired
	private ChatDao chatDao;
	
	@Override
	public ArrayList<Dept> selectDept() {
		return chatDao.selectDept();
	}
	
}
