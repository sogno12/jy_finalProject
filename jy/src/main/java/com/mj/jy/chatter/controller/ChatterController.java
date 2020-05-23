package com.mj.jy.chatter.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.socket.WebSocketSession;

import com.mj.jy.chatter.model.service.ChatterService;
import com.mj.jy.chatter.model.vo.ChatterDto;
import com.mj.jy.common.model.ResponseStatus;
import com.mj.jy.common.model.Result;
import com.mj.jy.member.model.vo.MemberDto;
import com.mj.jy.socketHandler.model.vo.ChatterHandler;
import com.mj.jy.socketHandler.model.vo.EchoHandler;

@Controller
public class ChatterController {

	private ChatterService chatterService;
	private EchoHandler echoHandler;
	private ChatterHandler chatterHandler;
	
	public ChatterController(ChatterService chatterService, EchoHandler echoHandler, ChatterHandler chatterHandler) {
		this.chatterService = chatterService;
		this.echoHandler = echoHandler;
		this.chatterHandler = chatterHandler;
	}


	@RequestMapping("chatter.ch")
	public String chatMain(@SessionAttribute("loginUser") MemberDto loginUser, Model model) {
		
		//현재 로그인중인 멤버정보
		Map<String, WebSocketSession> userSessionsMap = echoHandler.getUserMap();
		List<MemberDto> loginedUsers = new ArrayList<>();
		
		Set set = userSessionsMap.keySet();
		Iterator iterator = set.iterator();
		while(iterator.hasNext()){
			  String key = (String)iterator.next();
			  loginedUsers.add(chatterService.getLoginedUser(key));
			}

		model.addAttribute("loginedUsers", loginedUsers);
		
		//채팅방 정보
		List<ChatterDto> roomList = chatterService.roomList(loginUser.getEmpNo());
		model.addAttribute("roomList", roomList);
		
		return "/chatter/chatterBox";
	}
	
	@GetMapping("createChatroom.do")
	public String createChatroom(@SessionAttribute("loginUser") MemberDto loginUser, String receiverNo,
			Model model, HttpSession session) {
		
		int result = 0;
		
		if(loginUser.getEmpNo().equals(receiverNo)) {
			session.setAttribute("chatMsg", "본인은 선택할 수 없습니다.");
		}else {
			ChatterDto newChatterDto = new ChatterDto(loginUser.getEmpNo(), receiverNo);
			result = chatterService.createChatroom(newChatterDto);
			
			if(result>0) {
				session.setAttribute("chatMsg", "채팅방을 생성했습니다.");
			}else {
				session.setAttribute("chatMsg", "채팅방이 이미 존재합니다.");
			}
		}
		
		return "redirect:chatter.ch";
	}
	
	@RequestMapping("chatterOne.do")
	public String chatterOne(ChatterDto chatterDto, Model model) {
		
		chatterHandler.putChatterRoom(chatterDto.getChatterNo());
		model.addAttribute("chatterDto", chatterDto);
		return "chatter/chatterOne";
	}
	
	@GetMapping("chatterAlarm.do")
	public ResponseEntity chatterAlarm(int chatterNo, String senderName) {
		
		String receiverNo = chatterService.findReceiverNo(chatterNo, senderName);
		
		String alarmMsg = "7,"+receiverNo+","+senderName;
		
		echoHandler.chatterAlarm(alarmMsg);
		
		Result response = new Result(ResponseStatus.SUCCESS, receiverNo);
		
		return ResponseEntity.ok(response);
	}
}
