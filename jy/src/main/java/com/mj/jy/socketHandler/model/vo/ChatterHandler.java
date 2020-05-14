package com.mj.jy.socketHandler.model.vo;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.mj.jy.chatter.model.service.ChatterService;
import com.mj.jy.chatter.model.vo.ChatterRoom;
import com.mj.jy.member.model.vo.MemberDto;

public class ChatterHandler extends TextWebSocketHandler {
	
	
	private final ObjectMapper objectMapper;
	
	// 소켓 연결 -> 방번호랑 같이
	// 맵으로 방번호, 참여한사람들
	private final Set<WebSocketSession> connectedUsers = new HashSet<>();
	private final Map<Integer, ChatterRoom> chatRooms = new HashMap<>();
	
	
	public ChatterHandler() {
		this.objectMapper = new ObjectMapper();
	}

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.print("chatting..");
		connectedUsers.add(session);
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		String payload = message.getPayload();
		ChatMessage chatMessage = objectMapper.readValue(payload, ChatMessage.class);
		process(session, chatMessage);
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.print("chat closed..");
		closeProcess(session);
	}
	
	private void process (WebSocketSession session, ChatMessage chatMessage) {
		if (chatMessage.isMessage()) {
			sendMessage(chatMessage);
			return;
		}
		// 방에 첫 입장했을 때
		enterRoom(session, chatMessage);
	}
	
	private void sendMessage(ChatMessage chatMessage) {
		ChatterRoom chatterRoom = chatRooms.get(chatMessage.roomNo);
		int countMem = chatterRoom.sizeOfSessions();
		chatterRoom.sendMessage(chatMessage.sender+","+chatMessage.message);
		if(countMem == 1) {
			chatterRoom.sendMessage(chatMessage.sender+",1");
		}
	}
	
	private void enterRoom(WebSocketSession session, ChatMessage chatMessage) {
		ChatterRoom chatterRoom = chatRooms.get(chatMessage.roomNo);
		chatterRoom.enterUser(session);
		chatterRoom.sendMessage(chatMessage.sender+",0");
	}
	
	private void closeProcess(WebSocketSession session) {
		connectedUsers.remove(session);
		for (Entry<Integer, ChatterRoom> entry: chatRooms.entrySet()) {
			ChatterRoom chatterRoom = entry.getValue();
			if (chatterRoom.containsUser(session)) {
				chatterRoom.exitUser(session);
			}
		}
	}
	
	public void putChatterRoom(int roomNo) {
		
		if(chatRooms.containsKey(roomNo)) {
			return;
		}else {
			chatRooms.put(roomNo, new ChatterRoom(roomNo));
		}
	}
	
	private String getEmpNo(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		MemberDto loginUser = (MemberDto)httpSession.get("loginUser");
		
		if(loginUser == null) {
			return session.getId();
		}else {
			return loginUser.getEmpNo();
		}
	}

	private String getMemName(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		MemberDto loginUser = (MemberDto)httpSession.get("loginUser");
		
		if(loginUser == null) {
			return session.getId();
		}else {
			return loginUser.getMemberName();
		}
	}
			
}
