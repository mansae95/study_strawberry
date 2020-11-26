package com.study.strawberry.controller.signin;

import com.study.strawberry.dto.signin.MemberDTO;
import com.study.strawberry.dto.signin.SignInDTO;

public interface SignInMapper {
	public MemberDTO signIn(SignInDTO dto);
}
