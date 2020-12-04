package com.study.strawberry.controller.signin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.study.strawberry.dto.signin.SignInDTO;
import com.study.strawberry.service.signin.SignInService;

@Controller
public class SignInController {
	@Autowired
	SignInService signService;




	@RequestMapping(value = "member/signin", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView memberSignin(HttpServletRequest request, HttpServletResponse response,
				@ModelAttribute("signinForm") @Valid SignInDTO dto, BindingResult result) {
		
		//예제 로그인 주소.
		ModelAndView mav = new ModelAndView("member/signin/signIn");

		if(request.getMethod().contentEquals("POST")) {
			System.out.println(dto.getEmail());
			if(result.hasErrors()) return mav;
			else {
				signService.signIn(dto); 
				
				if(signService.isSignIn()) {
					HttpSession session = request.getSession();
					session.setAttribute("email", signService.getEmail());
					session.setAttribute("nick", signService.getNick());
					session.setAttribute("level", signService.getLevel());
					
					mav.setViewName("redirect:/main");
				} else 
					result.addError(new FieldError("signinForm", "eMsg", "찾을 수 없는 계정입니다."));
				
				return mav;
			}
		}
		
		
		mav.addObject("signinForm", null);
		return mav;
	}
}
