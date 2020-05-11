package com.mj.jy.messenger.model.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mj.jy.attachment.model.vo.Attachment;
import com.mj.jy.messenger.model.vo.Messenger;

@Mapper
public interface MessengerDao {

	int insertAttachment(Attachment a);
	int insertMessage(Messenger m);
}
