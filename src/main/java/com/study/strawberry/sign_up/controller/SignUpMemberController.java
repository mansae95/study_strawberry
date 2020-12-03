package com.study.strawberry.sign_up.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.strawberry.sign_up.dto.SignUpMemberDTO;
import com.study.strawberry.sign_up.service.SignUpMemberService;
import com.study.strawberry.sign_up.service.SignUpTokenService;

/*
 	# 회원 가입 처리 컨트롤러
 */
@Controller
@RequestMapping("member/")
public class SignUpMemberController {
	
	@Autowired
	SignUpMemberService sums;
	
	@Autowired
	SignUpTokenService suts;
	
	// 테스트 컨트롤러
	// 최종 커밋 전 삭제 필요
	@GetMapping("signupmember")
	public String getpage() {
		return "example/signupTest";
	}
	
    /*
     	# 회원 가입 페이지 처리
     	- request URL : 확인 필요 (POST), 테스트용 - member/signupmember
     	- Parameter : email, pwd, nick, token
     	- response View : Redirect:/member/signin
     */
	@PostMapping("signupmember")
    public String SignUpMember(@ModelAttribute("signUpMember") @Valid SignUpMemberDTO signUpMember, 
					    	   BindingResult result,
					    	   String token,
    						   Model model) {
		
    	if (result.hasErrors()) { // 회원가입 실패
    		System.out.println(signUpMember);
//    		model.addAttribute("signUpMember", signUpMember);
    		return "example/signupTest";
    	} 
    	
    	
 
    	
    	/*
    	sums.setSqlSession();
    	
    	if(sums.checkValidation(member)) {
    		// 프로모션 정보 수집 동의 내역 확인
    		suts.setSqlSession();
    		member.setAdAgreeYn(suts.selectAdAgreeYnByToken(token));
    		
    		// 회원 등록
    		sums.insertMember(member);
    		
    		// token 삭제
    		suts.deleteByToken(token);
    		
    	} else { // 회원가입 실패, 뷰 작성 내용 확인 후 작성 예정
    		
    		return "redirect:/member/signin";
    	}*/
    	
    	
    	return "redirect:/member/signin";
    }
}
