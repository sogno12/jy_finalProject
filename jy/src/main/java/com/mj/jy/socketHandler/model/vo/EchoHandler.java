package com.mj.jy.socketHandler.model.vo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.util.StringUtils;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.mj.jy.member.model.vo.MemberDto;

public class EchoHandler extends TextWebSocketHandler {
	/* 에코 서버 */
	// All
	List<WebSocketSession> sockets = new ArrayList<>();
	Map<String, WebSocketSession> userSessionsMap = new HashMap<>();
	
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println("connet..");
		
		// All	
		sockets.add(session);
		
		// 각 멤버의 empNo와 세션을 Map에 담아둠
		String empNo = getEmpNo(session);
		userSessionsMap.put(empNo, session);


		//System.out.println(session.getAttributes());
	}
		
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		// System.out.println(message.getPayload());

		// 모두에게 보낼때
		//TextMessage msg = new TextMessage(session.getId()+","+message.getPayload());
		//for(WebSocketSession sess : sockets) {	sess.sendMessage(msg);	}
		
		// protocol
		String msg = message.getPayload();
		if(!StringUtils.isEmpty(msg)) {
			String[] strs = msg.split(",");
			
			// System.out.println(strs);
			
			// Alarm - protocol: cmd, 받는사람
			if(strs != null && strs.length == 2) {
				String cmd = strs[0];
				String receiverEmpNo = strs[1];
				
				WebSocketSession receiverSession = userSessionsMap.get(receiverEmpNo);
				

				if("5".equals(cmd) && receiverSession != null) {
					TextMessage tmpMsg = new TextMessage("5번 내용 실행");
					receiverSession.sendMessage(tmpMsg);
				} else if ("6".equals(cmd) && receiverSession != null) {
					TextMessage tmpMsg = new TextMessage("6번 내용 실행");
					receiverSession.sendMessage(tmpMsg);
				} else if ("4".equals(cmd) && receiverSession != null) {
					TextMessage tmpMsg = new TextMessage("4번 내용 실행");
					receiverSession.sendMessage(tmpMsg);

				}
			}
		}
		
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("close..");
		userSessionsMap.remove(getEmpNo(session));
		sockets.remove(session);
	}
	
	// loginUser의 empNo를 가져오기
	private String getEmpNo(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		MemberDto loginUser = (MemberDto)httpSession.get("loginUser");
		
		if(loginUser == null) {
			return session.getId();
		}else {
			return loginUser.getEmpNo();
		}
	}
	
	// 1. 모든 알람 갯수 가져오기
	public void countAppAlarm(String alarm) {
		// System.out.println(alarm);
		
		TextMessage message = new TextMessage(alarm);
		
		// protocol
		String msg = message.getPayload();
		if(!StringUtils.isEmpty(msg)) {
			String[] strs = msg.split(",");
			
			//Alarm갯수 알림 - protocol: cmd(0), 받는사람
			if(strs != null && strs.length == 2) {
				String cmd = strs[0];
				String receiverEmpNo = strs[1];

				
				WebSocketSession receiverSession = userSessionsMap.get(receiverEmpNo);
				
				
				try {

					

					if(receiverSession != null) {

					TextMessage tmpMsg = new TextMessage(cmd);
					
					receiverSession.sendMessage(tmpMsg);
					

					}
				}catch(IOException e) {
					System.out.println("echoHandler Error"+e);
				}
			}
		}
	}
	
	// 2. 알림 보여주기
	public void noticeAppAlarm(String alarm) {
		// System.out.println(alarm);
		
		TextMessage message = new TextMessage(alarm);
		
		// protocol
		String msg = message.getPayload();
		if(!StringUtils.isEmpty(msg)) {
			String[] strs = msg.split(",");
			
			//Alarm갯수 알림 - protocol: cmd(0), 받는사람
			if(strs != null && strs.length == 2) {
				String cmd = strs[0];
				String receiverEmpNo = strs[1];
			
				WebSocketSession receiverSession = userSessionsMap.get(receiverEmpNo);
				
				try {
					if("5".equals(cmd) && receiverSession != null) {
						TextMessage tmpMsg = new TextMessage(cmd);
						receiverSession.sendMessage(tmpMsg);
					} else if ("6".equals(cmd) && receiverSession != null) {
						TextMessage tmpMsg = new TextMessage(cmd);
						receiverSession.sendMessage(tmpMsg);
					} else if ("4".equals(cmd) && receiverSession != null) {
						TextMessage tmpMsg = new TextMessage(cmd);
						receiverSession.sendMessage(tmpMsg);
					} 
				}catch(IOException e) {
					System.out.println("echoHandler Error"+e);
				}
			}
		}
		
	}
	
	// 3. 채팅알람
	public void chatterAlarm(String alarm) {
		TextMessage message = new TextMessage(alarm);
		
		//protocol
		String msg = message.getPayload();
		if(!StringUtils.isEmpty(msg)) {
			String[] strs = msg.split(",");;
			
			if(strs != null && strs.length ==3) {
				String cmd = strs[0];
				String receiverEmpNo = strs[1];
				String senderMemName = strs[2];
				
				WebSocketSession receiverSession = userSessionsMap.get(receiverEmpNo);
				
				try {
					if(receiverSession != null) {
						TextMessage tmpMsg = new TextMessage(cmd+","+senderMemName);
						receiverSession.sendMessage(tmpMsg);
					}
				}catch(IOException e) {
					System.out.println("echoHandler Error"+e);
				}
			}
		}
	}
	
	public Map getUserMap() {
		return userSessionsMap;
	}
}
