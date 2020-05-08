package com.mj.jy.chat.controller;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mj.jy.chat.model.service.ChatService;

@Controller
public class ChatController {

	@Autowired
	private ChatService chatService;
	
	@RequestMapping("chat.ch")
	public String chatMain() {
		return "/chat/chatMain";
	}
	
	
	
	
}
