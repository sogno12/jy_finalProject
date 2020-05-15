package com.mj.jy.messenger.model.service;

import java.util.ArrayList;

import com.mj.jy.attachment.model.vo.Attachment;
import com.mj.jy.messenger.model.vo.Messenger;


public interface MessengerService {

	// 메세지 인서트
	int insertMessage(Messenger m, Attachment a);
	
	// 메세지 리스트
	ArrayList<Messenger> selectMgList(String empNo);
	
	// 메세지 확인
	int readMessage(Messenger m);
	
	// 메세지 삭제 
	int deleteMessage(int msgNo);

	int readDone(int recieverNo);

	
	
}
