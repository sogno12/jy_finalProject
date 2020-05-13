package com.mj.jy.chatter.model.service;

import java.util.List;

import com.mj.jy.chatter.model.vo.ChatterDto;
import com.mj.jy.member.model.vo.MemberDto;

public interface ChatterService {
	
	/** sujin1. 채팅방들 리스트 가져오기
	 * @return
	 */
	List<ChatterDto> roomList(String empNo);

	/** sujin2. 현재 접속중인 사용자들의 정보 가져오기
	 * @param empNo
	 * @return
	 */
	MemberDto getLoginedUser(String empNo);

	/** sujin3. 로그인유저와 선택한 유저 사이의 채팅방 만들기
	 * @param loginUserEmpNo
	 * @param receiverNo
	 * @return
	 */
	int createChatroom(ChatterDto newChatterDto);
	
	/** sujin4. 방번호와 보내는 사람 이름으로 받는사람 번호 찾기
	 * @param chatterNo
	 * @param senderName
	 * @return
	 */
	String findReceiverNo(int chatterNo, String senderName);

}
