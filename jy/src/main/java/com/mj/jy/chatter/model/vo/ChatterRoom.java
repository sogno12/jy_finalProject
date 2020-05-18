package com.mj.jy.chatter.model.vo;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;

public class ChatterRoom {
	
	private int roomNo;		// 방번호
	private Set<WebSocketSession> sessions = new HashSet<>();
	
	public ChatterRoom(int roomNo) {
		this.roomNo = roomNo;
	}
	
	/*
	 * public void handleActions(WebSocketSession session, ChatMessageDto
	 * chatMessageDto, ChatterService chatterService) {
	 * if(chatMessageDto.getType().equals(ChatMessageDto.MessageType.ENTER)) {
	 * sessions.add(session);
	 * chatMessageDto.setMessage(chatMessageDto.getSender()+"님이 입장하였습니다."); }
	 * sendMessage(chatMessageDto, chatterService); }
	 * 
	 * public <T> void sendMessage(T message, ChatterService chatterService) {
	 * sessions.parallelStream().forEach(session ->
	 * chatterService.sendMessage(session, message)); }
	 */
	
	public void sendMessage(String message) {
		TextMessage sendMessage = new TextMessage(message);
		try {
			for (WebSocketSession session: sessions) {
					session.sendMessage(sendMessage);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void enterUser(WebSocketSession session) {
		sessions.add(session);
	}

	public boolean containsUser(WebSocketSession session) {
		return this.sessions.contains(session);
	}

	public void exitUser(WebSocketSession session) {
		this.sessions.remove(session);
	}
	
	public int sizeOfSessions() {
		return this.sessions.size();
	}
	
	public int getRoomNo() {
		return this.roomNo;
	}
}
