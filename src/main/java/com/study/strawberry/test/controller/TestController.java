package com.study.strawberry.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {
	
	// Test Web 페이지
	@RequestMapping(value = "/member/signup", method = RequestMethod.GET)
	public String signup() {
		System.out.println("URL : /member/signup/agreement - GET");
		return "member/signup/agreement";
	}
}
