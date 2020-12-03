package com.study.strawberry.sign_up.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.study.strawberry.sign_up.dto.SignUpMemberDTO;
import com.study.strawberry.sign_up.service.SignUpMemberService;
import com.study.strawberry.sign_up.service.SignUpTokenService;

/*
 	# 회원 가입 처리 컨트롤러
 */
@Controller
@RequestMapping("member/") // 
public class SignUpMemberController {
	
	@Autowired
	SignUpMemberService sums;
	
	@Autowired
	SignUpTokenService suts;
	
	
    /*
     	# 회원 가입 페이지 처리
     	- request URL : member/member_signup
     	- Parameter : email, pwd, nick, token
     	- response View : Redirect:/member/signin
     */
	@PostMapping("/member_signup")
    public String SignUpMember(@Valid SignUpMemberDTO member, 
					    	   BindingResult result,
					    	   String token,
					    	   Model model) {
		String viewPath = "member/signup/member_join";
		
    	if (result.hasErrors()) { // 회원가입 실패 - 유효성 검증 에러
    		model.addAttribute("msg", "signupFail");
    		return viewPath;
    	} 
    	
    	sums.setSqlSession();
    	if (sums.checkDuplEmail(member.getEmail())			    // 이메일 중복 확인
    			&& sums.checkDuplNick(member.getNickname())) {  // 닉네임 중복 확인
    		// 프로모션 정보 수집 동의 내역 확인
    		suts.setSqlSession();
    		member.setAdAgreeYn(suts.selectAdAgreeYnByToken(token));
    		
    		// 회원 등록
    		sums.insertMember(member);
    		
    		// token 삭제
    		suts.deleteByToken(token);
    		
    		return "redirect:/member/signin";
    	
    	} else { // 회원가입 실패 - 이메일 또는 닉네임 중복 있음
    		model.addAttribute("msg", "signupFail");
    		return viewPath;
    	}

    	
    }
	
	// # 이메일 중복 확인 이벤트 (ajax)
	@PostMapping("signup/MemberEmailCheckAction.do")
	@ResponseBody
	public String checkMemberEmail(String email) {
		sums.setSqlSession();
		
		if (!email.equals("") 
				&& sums.checkEmailRegExp(email)	 // 이메일 정규식 확인 
				&& sums.checkDuplEmail(email)) { // 이메일 중복 확인
			return "1";
		} else {
			return "0";
		}
		
	}
	
	// # 닉네임 중복 확인 이벤트 (ajax)
	@PostMapping("signup/MemberNicknameCheckAction.do")
	@ResponseBody
	public String checkMemberNick(String nickname) {
		System.out.println(nickname);
		sums.setSqlSession();
		
		if (!nickname.equals("") 
				&& sums.checkDuplNick(nickname)) { // 닉네임 중복 확인
			return "1";
		} else {
			return "0";
		}
		
	}
	
}
