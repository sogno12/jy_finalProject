package com.mj.jy.messenger.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.jy.attachment.model.vo.Attachment;
import com.mj.jy.messenger.model.dao.MessengerDao;
import com.mj.jy.messenger.model.vo.Messenger;

@Service
public class MessengerServiceImpl implements MessengerService{

	@Autowired
	private MessengerDao mgDao;
	
	@Override
	public int insertMessage(Messenger m, Attachment a) {
		
		int messageResult = 0;
		
		if(a.getOriginName() != null) { //첨부파일이 있을 경
			mgDao.insertAttachment(a);
			messageResult = mgDao.insertMessage2(m);
			
		}else { // 첨부파일이 없을 경

			messageResult = mgDao.insertMessage1(m);
		}
		
		
		return messageResult;
	}
	
	@Override
	public ArrayList<Messenger> selectMgList(String empNo) {
		return mgDao.selectMgList(empNo);
	}

	@Override
	public int readMessage(Messenger m) {
		
		return mgDao.readMessage(m);
	}

	@Override
	public int deleteMessage(int msgNo) {
		
		return mgDao.deleteMessage(msgNo);
	}

	
}
