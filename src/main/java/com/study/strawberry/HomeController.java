package com.study.strawberry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView home(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return new ModelAndView("home/home");
	}


	//footer와 side bar 적용에 관한 Example.
	@RequestMapping(value = "main", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView footerAndSidebarExample(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/* 로그인 세션 체크용, 나중에 로그인 체크시 세션네임 변경해야함. (테스트용)
		 * 주석 없애고 example 페이지로 가면 사이드바에 SIGN IN / SIGN UP에서 SIGN OUT / MY PAGE로 변경되는걸 확인하실 수 있음. */
		/*
		HttpSession session = request.getSession();
		session.setAttribute("loginTest", true);
		*/
		return new ModelAndView("home/main");
	}
}