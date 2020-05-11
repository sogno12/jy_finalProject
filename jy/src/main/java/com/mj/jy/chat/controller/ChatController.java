package com.mj.jy.chat.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.mj.jy.chat.model.service.ChatService;
import com.mj.jy.chat.model.vo.Dept;

@Controller
public class ChatController {

	@Autowired
	private ChatService chatService;
	
	@RequestMapping("chat.ch")
	public String chatMain() {
		return "/chat/chatMain";
	}
	
	@ResponseBody
	@RequestMapping(value="dept.ch", produces="application/json; charset=utf-8")
	public String selectDept() {
		
		ArrayList<Dept> list = chatService.selectDept();
		
		Gson gson = new Gson();
		
		return gson.toJson(list);
		
		
	}
	
	
}
