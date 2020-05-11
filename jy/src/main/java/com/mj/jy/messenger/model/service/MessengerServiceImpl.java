package com.mj.jy.messenger.model.service;

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
		
		if(a.getOriginName() != null) {
			mgDao.insertAttachment(a);
			
		}
		
		messageResult = mgDao.insertMessage(m);
		
		return messageResult;
	}

	
}
