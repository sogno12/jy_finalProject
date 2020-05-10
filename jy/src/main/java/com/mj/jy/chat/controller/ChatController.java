package com.mj.jy.chat.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ChatController {

	@RequestMapping("chat.ch")
	public String chatMain() {
		return "/chat/chatMain";
	}
	
	@RequestMapping(value="chatting.ch", method=RequestMethod.GET)
	public void chat(Locale locale, Model model) {
		
	}
	
}
