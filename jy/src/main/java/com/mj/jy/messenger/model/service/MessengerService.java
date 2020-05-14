package com.mj.jy.messenger.model.service;

import com.mj.jy.attachment.model.vo.Attachment;
import com.mj.jy.messenger.model.vo.Messenger;


public interface MessengerService {

	int insertMessage(Messenger m, Attachment a);
}
