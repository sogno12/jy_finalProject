package com.mj.jy.messenger.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.mj.jy.attachment.model.vo.Attachment;
import com.mj.jy.messenger.model.vo.Messenger;

@Mapper
public interface MessengerDao {

	int insertAttachment(Attachment a);
	int insertMessage1(Messenger m);
	int insertMessage2(Messenger m);
	ArrayList<Messenger> selectMgList(String empNo);
	int readMessage(Messenger m);
	int deleteMessage(int msgNo);
	int readDone(int recieverNo);
}
