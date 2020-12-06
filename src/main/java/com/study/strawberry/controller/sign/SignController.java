package com.study.strawberry.controller.sign;

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

import com.study.strawberry.dto.sign.SignDTO;
import com.study.strawberry.service.sign.SignService;

@Controller
public class SignController {
	@Autowired
	private SignService signService;
	
	/* Sign In */
	@RequestMapping(value = "member/signin", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView memberSignin(HttpServletRequest request, HttpServletResponse response,
				@ModelAttribute("signinForm") @Valid SignDTO dto, BindingResult result) {

		ModelAndView mav = new ModelAndView("member/signin/signIn");

		if(request.getMethod().contentEquals("POST")) {
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
	
	/* Sign Out */
	@RequestMapping(value = "member/signout", method = {RequestMethod.GET, RequestMethod.POST})
	public String memberSignout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/main";
	}
}
