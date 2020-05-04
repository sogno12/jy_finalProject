package com.mj.jy.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	// 메인화면(공지사항, 결재 진행사항, todolist)
	@RequestMapping("main.do")
	public String goMain() {
		return "main";
	}
}
