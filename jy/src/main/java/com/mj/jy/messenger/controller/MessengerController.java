package com.mj.jy.messenger.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.mj.jy.alarm.model.service.AppAlarmService;
import com.mj.jy.approval.model.service.ApprovalService;
import com.mj.jy.attachment.model.vo.Attachment;
import com.mj.jy.member.model.service.MemberService;
import com.mj.jy.member.model.vo.Member;
import com.mj.jy.member.model.vo.MemberDto;
import com.mj.jy.messenger.model.service.MessengerService;
import com.mj.jy.messenger.model.vo.Messenger;

@Controller
public class MessengerController {
	
	@Autowired
	private MemberService mService;
	@Autowired
	private MessengerService mgService;
	
	
	private AppAlarmService appAlarmService;
	private ApprovalService approvalService;
	
	
	public MessengerController(ApprovalService approvalService, AppAlarmService appAlarmService) {
		this.approvalService = approvalService;
		this.appAlarmService = appAlarmService;
	}
	
	
	//수신자 이름 검색
	@ResponseBody
	@RequestMapping(value="search.mg", produces="application/json; charset=utf-8")
	public String searchReceiver() {
		ArrayList<MemberDto> receivers = mService.receiverList();
		
		Object[] arr = receivers.toArray();
		
		
		for(int i=0; i<receivers.size(); i++) {
			arr[i]= (receivers.get(i).getMemberName() + "," + receivers.get(i).getDepartmentName() +"," + receivers.get(i).getPositionName()+ "," + receivers.get(i).getEmpNo());
		}
		
		Gson gson = new Gson();
		return gson.toJson(arr);
		
		
	
	}
	
	// 메세지 인서트
	@RequestMapping("insert.mg")
	public String insertMessage(@SessionAttribute("loginUser") MemberDto loginUser,Attachment a,Messenger m, HttpServletRequest request, Model model,
									@RequestParam(value="attachment", required=false) MultipartFile file, @RequestParam(value="countries") String[] receiver, HttpSession session) {
		

		m.setSenderNo(loginUser.getEmpNo());
		

		for(int i=0; i< receiver.length; i++) {
			if(i == 3) {
				m.setReceiverNo(receiver[i]);
			}
		}
		
		int folderNo= 4;
		
	// alarm :4
		if(!file.getOriginalFilename().contentEquals("")) {
			
			String changeName = saveFile(file, request, folderNo);
			String originName = file.getOriginalFilename();
			
			a.setOriginName(originName);
			a.setUpdateName(changeName);
			a.setFolderNo(folderNo);
		}
		
    	int messageResult = mgService.insertMessage(m, a);
    	
   
    	
		if(messageResult > 0 ) {	
			
			Member mem = new Member();
			
		 	String empNo = m.getReceiverNo();
		 
		 	mem.setEmpNo(empNo);
		 	
		 	
		 	
		 	int recieverNo = mService.findMemberNo(mem);
		 	int senderNo = loginUser.getMemberNo();
	    	
	    	appAlarmService.insertAppAlarm(senderNo, recieverNo, "4");
	    	
	    	appAlarmService.countAppAlarm(recieverNo);
	    	
	    	appAlarmService.noticeAppAlarm(recieverNo, "4");
	    	
	    	
			model.addAttribute("m", m);
			model.addAttribute("a", a);
			session.setAttribute("msgmsg", "쪽지를 보냈습니다!");
		}else{
			System.out.println("실패!");
		};
		return "redirect:messenger.me";
	}
	
	
	@ResponseBody
	@RequestMapping("checkmsg.mg")
	public String checkMsg(Messenger m, int msgNo, Model model) {

		   SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//dd/MM/yyyy
		   
		   Date now = new Date();
		   
		   String date = sdfDate.format(now);
		   
		   Timestamp timestamp = Timestamp.valueOf(date);
		   
		   m.setReceiveTime(timestamp);
		   m.setMessageNo(msgNo);
		
		   int result = mgService.readMessage(m);
		
		return String.valueOf(result);
	}
	
	@ResponseBody
	@RequestMapping("deletemsg.mg")
	public int deleteMsg(int msgNo) {
		
		int result = mgService.deleteMessage(msgNo);
		
	
		return result;
	}
	
	
	public String saveFile(MultipartFile file, HttpServletRequest request, int folderNo) {
		
		String resources = request.getSession().getServletContext().getRealPath("resources");
		String savePath = resources + "//upload_file_messenger//";
		
		String originName = file.getOriginalFilename();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String currentTime = sdf.format(new Date());
		String ext = originName.substring(originName.lastIndexOf("."));
		
		String changeName = currentTime + ext;
		
		try {
			file.transferTo(new File(savePath + changeName)); // 서버에 업로드 시키는 구문
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		return changeName;

		
	}
	
}
