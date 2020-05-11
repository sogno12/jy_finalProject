package com.mj.jy.alarm.model.service;

public interface AppAlarmService {

	/** sujin1. 해당직원의 모든 알람 갯수 가져오기
	 * @return
	 */
	int countAppAlarm(int memberNo);

	/** sujin3. empNo에 따른 6가지 알림 갯수 각각 가져오기
	 * @param empNo
	 * @return
	 */
	String eachAppAlarm(int memberNo);

	/** sujin4. 해당 직원의 보낸 결재 알람(5) 읽음표시 'n' -> 'y'
	 * @param memberNo
	 */
	void readSendAppAlarm(int memberNo);

	/** sujin5. 해당 직원의 받은 결재 알람(6) 읽음표시 'n' -> 'y'
	 * @param memberNo
	 */
	void readRecieveAppAlarm(int memberNo);

	/** sujin6. 알람 알리기 5 or 6
	 * @param parseInt
	 */
	void noticeAppAlarm(int memberNo, String type);

	/** sujin7. 알람 등록
	 * @param senderNo
	 * @param recieverNo
	 * @param type
	 */
	void insertAppAlarm(int senderNo, int recieverNo, String type);
	
}
