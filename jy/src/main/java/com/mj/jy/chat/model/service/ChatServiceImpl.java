package com.mj.jy.chat.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.chat.model.dao.ChatDao;

@Service("chatService")
public class ChatServiceImpl implements ChatService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private ChatDao chatDao;
	
}
