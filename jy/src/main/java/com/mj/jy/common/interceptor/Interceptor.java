package com.mj.jy.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Interceptor extends HandlerInterceptorAdapter {
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
	         throws Exception {
		
		// preHandle 메소드가 실행되는 시점
		// DispatcherServlet --- 낚아챔 --> Controller
		
		// 메소드가 실행되는 시점
		// 

		HttpSession session = request.getSession();
		
		if(session.getAttribute("loginUser") == null) {	// 로그인이 안된 상태
			
			session.setAttribute("msg", "로그인 먼저 해주세요");
			response.sendRedirect(request.getContextPath());
			
			return false;
			
		} else {	// 로그인 되어있는 상태 => Controller 제대로 실행하게끔
			
			
			
			return true;
		}
		
		// return true; 	// return true : Controller 실행
							// return false : Controller 실행 X
		
	}

}
