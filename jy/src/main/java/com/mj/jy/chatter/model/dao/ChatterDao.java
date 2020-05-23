package com.mj.jy.chatter.model.dao;

import java.util.List;

import com.mj.jy.chatter.model.vo.ChatterDto;
import com.mj.jy.member.model.vo.MemberDto;

public interface ChatterDao {

	List<ChatterDto> roomList(String empNo);

	MemberDto getLoginedUser(String empNo);

	int checkRoom(ChatterDto newChatterDto);

	int createChatroom(ChatterDto newChatterDto);

	ChatterDto findReceiverNo(int chatterNo);

	
	
}
