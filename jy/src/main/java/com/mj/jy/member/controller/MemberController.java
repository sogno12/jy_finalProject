package com.mj.jy.member.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.mj.jy.alarm.model.service.AppAlarmService;

import com.mj.jy.member.model.service.MemberService;
import com.mj.jy.member.model.vo.Member;
import com.mj.jy.member.model.vo.MemberDto;
import com.mj.jy.namecard.model.vo.PageInfo;
import com.mj.jy.namecard.model.vo.Pagination;

@Controller
public class MemberController {

	@Autowired
	private MemberService mService;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	@Autowired
	private AppAlarmService appAlarmService;
	
	// 로그인
	@RequestMapping("login.me")
	public ModelAndView loginMember(MemberDto m, HttpSession session, ModelAndView mv) {
		
		MemberDto loginUser = mService.loginMember(m);
		
		// System.out.println(loginUser);
		
		if(loginUser != null && bcryptPasswordEncoder.matches(m.getPwd(), loginUser.getPwd())) {
			
			session.setAttribute("loginUser", loginUser);
			
			// 세션에 로그인한 회원의 알람 내용 담기
			String eachAlarms = appAlarmService.eachAppAlarm(loginUser.getMemberNo());
			String[] eachAlarm = eachAlarms.split(",");
			session.setAttribute("eachAlarm", eachAlarm);
			
			mv.setViewName("redirect:/main.do");
			
		} else {
			session.setAttribute("msg", "로그인 실패");
			mv.setViewName("redirect:/");
		}
		
		return mv;
	}

	// 로그아웃
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// 인사관리(인사카드 등록) 페이지로 이동
	@RequestMapping("enrollForm.me")
	public String memberEnrollForm() {
		return "member/memberEnrollForm";
	}
	
	// 인사관리 메뉴(인사카드 등록)
	@RequestMapping("insert.me")
	public String insertMember(Member m, Model model, HttpSession session) {
		
		// 주민등록번호 앞 6자리를 비밀번호로 설정
		String rrnPwd = m.getRrn().substring(0, 6);
		
		// 암호화
		String encPwd = bcryptPasswordEncoder.encode(rrnPwd);
		
		// Date joinDate -> String
		DateFormat sdFormat = new SimpleDateFormat("yyyyMMdd");
		String joinNo = sdFormat.format(m.getJoinDate());
		
		m.setPwd(encPwd);
		m.setEmpNo(joinNo);
		
		int result = mService.insertMember(m);
		
		if(result > 0) {
			
			// 인사카드 등록 후 전체 회원 조회하는 메뉴로 리턴
			 selectMemberList(m, model);
			return "redirect:memberList.me";
			
		} else {
			return "";
		}
		
	}
	
	// 직원 관리 메뉴(직원 전체 조회)
	@RequestMapping("memberList.me")
	public String selectMemberList(Member m, Model model) {
		
		ArrayList<Member> list = mService.selectMemberList();
		model.addAttribute("list", list);
		return "member/memberListView";
	}
	
	// 직원 상세 정보
	@RequestMapping("select.me")
	public String selectMember(String empNo, Model model) {
		// System.out.println(empNo);
		MemberDto m = mService.selectMember(empNo);
		model.addAttribute("m", m);
		return "member/memberDetailView";
	}
	
	// 직원 정보 수정 화면
	@RequestMapping("updateForm.me")
	public String updateForm(String empNo, Model model) {
		
		MemberDto m = mService.selectMember(empNo);
		
		model.addAttribute("m", m);
		return "member/memberUpdateForm";
	}
	
	// 직원 정보 수정
	@RequestMapping("update.me")
	public String updateMember(MemberDto m, Model model) {
		
		// 주민등록번호 앞 6자리를 비밀번호로 설정
		String rrnPwd = m.getRrn().substring(0, 6);
		
		// 암호화
		String encPwd = bcryptPasswordEncoder.encode(rrnPwd);
		
		m.setPwd(encPwd);
		
		// System.out.println(m);

		int result = mService.updateMember(m);
		
		if(result > 0) {
			
			if(m.getResignDate() == null) {				
				model.addAttribute("empNo", m.getEmpNo());
				return "redirect:select.me";
			} else {
				return "redirect:memberList.me";
			}
			
			
		} else {
			
			return "실패";
		}
	}
	
	// 나의 프로파일
	@RequestMapping("myInfo.me")
	public String myInfo(HttpSession session) {
		return "member/myPage";
	}
	
	
	// 근태관리
	@RequestMapping("commute.me")
	public String commute(HttpSession session) {
		return "member/commute";
	}
	
	// 주소록
	@RequestMapping("addressBook.me")
	public String addressBook(Model model,@RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		
		int listCount = mService.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		
		ArrayList<Member> listDept = mService.selectListDept(pi);
		ArrayList<Member> listPos = mService.selectListPos(pi);
		
		model.addAttribute("listDept",listDept);
		model.addAttribute("listPos",listPos);
		model.addAttribute("pi", pi);
		
		return "member/addressBook";
	}
	
	// 쪽지
	@RequestMapping("messenger.me")
	public String messenger(Model model) {	
	   
		return "member/messenger";
	}
	
	@GetMapping("teamTable.me")
	public String goTeamMemberTable(@SessionAttribute("loginUser") MemberDto loginUser, Model model,
			@RequestParam(required = false, defaultValue = "1") int pageIndex, 
			@RequestParam(required = false, defaultValue = "5") int countNum) {
		
		int departmentNo = loginUser.getDepartmentNo();
		int count = mService.getCountDeptMember(departmentNo);
		if(countNum == 0) {
			countNum = count;
		}
		PageInfo pi = Pagination.getPageInfo(count, pageIndex, 10, countNum);
		model.addAttribute("listDept", mService.getListDept(departmentNo, pi));
		// System.out.println(mService.getListDept(departmentNo, pi));
		if(countNum == count) {
			countNum = 0;
		}
		model.addAttribute("countNum", countNum);
		
		return "member/teamMemberTable";
	}
	
}
