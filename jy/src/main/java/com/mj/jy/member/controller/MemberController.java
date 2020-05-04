package com.mj.jy.member.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mj.jy.member.model.service.MemberService;
import com.mj.jy.member.model.vo.Member;
import com.mj.jy.member.model.vo.MemberDto;

@Controller
public class MemberController {

	@Autowired
	private MemberService mService;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	// 로그인
	@RequestMapping("login.me")
	public ModelAndView loginMember(MemberDto m, HttpSession session, ModelAndView mv) {
		
		MemberDto loginUser = mService.loginMember(m);
		
		// System.out.println(loginUser);
		
		if(loginUser != null && bcryptPasswordEncoder.matches(m.getPwd(), loginUser.getPwd())) {
			
			session.setAttribute("loginUser", loginUser);
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
		
		m.setMemberPwd(encPwd);
		m.setEmpNo(joinNo);
		
		int result = mService.insertMember(m);
		
		if(result > 0) {
			
			// 인사카드 등록 후 전체 회원 조회하는 메뉴로 리턴
			selectMemberList(m, model);
			return "member/memberListView";
			
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
			
			model.addAttribute("empNo", m.getEmpNo());
			return "redirect:select.me";
			
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
	public String addressBook(Model model) {
		
		ArrayList<Member> listDept = mService.selectListDept();
		ArrayList<Member> listPos = mService.selectListPos();
		
		model.addAttribute("listDept",listDept);
		model.addAttribute("listPos",listPos);
		
		return "member/addressBook";
	}
	
	// 급여정보
	@RequestMapping("salary.me")
	public String salary(HttpSession session) {
		return "member/salary";
	}
	
	// 휴가정보
	@RequestMapping("leave.me")
	public String leave(HttpSession session) {
		return "member/vacation";
	}
	
	// 쪽지
	@RequestMapping("messenger.me")
	public String messenger(HttpSession session) {
		return "member/messenger";
	}
	
}
