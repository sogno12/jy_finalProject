package com.mj.jy.chatter.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mj.jy.chatter.model.dao.ChatterDao;
import com.mj.jy.chatter.model.vo.ChatterDto;
import com.mj.jy.member.model.vo.MemberDto;

@Service
public class ChatterServiceImpl implements ChatterService {

	private ChatterDao chatterDao;
	
	public ChatterServiceImpl(ChatterDao chatterDao) {
		this.chatterDao = chatterDao;
	}

	@Override
	public List<ChatterDto> roomList(String empNo) {
		return chatterDao.roomList(empNo);
	}

	@Override
	public MemberDto getLoginedUser(String empNo) {
		return chatterDao.getLoginedUser(empNo);
	}

	@Override
	public int createChatroom(ChatterDto newChatterDto) {
		
		// 1. 동일 참가자들의 채팅방이 존재하는지 확인
		int checkRoom = chatterDao.checkRoom(newChatterDto);
		
		// 2. 존재하지 않으면 채팅방 생성
		if(checkRoom == 0) {
			checkRoom = chatterDao.createChatroom(newChatterDto);
		}else {
			checkRoom = 0;
		}
		
		return checkRoom;
	}

	@Override
	public String findReceiverNo(int chatterNo, String senderName) {
	
		ChatterDto findChatterDto = chatterDao.findReceiverNo(chatterNo);

		String result ="";
		
		if(findChatterDto.getReceiverName().equals(senderName)) {
			result = findChatterDto.getSenderNo();
		}else if(findChatterDto.getSenderName().equals(senderName)) {
			result = findChatterDto.getReceiverNo();
		}
		return result;
		
	}
}
