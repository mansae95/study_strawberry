package com.study.strawberry.service.signin;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.strawberry.controller.signin.SignInMapper;
import com.study.strawberry.dto.signin.MemberDTO;
import com.study.strawberry.dto.signin.SignInDTO;

@Service
public class SignInService {
	@Autowired
    private SqlSession sqlSession;
	private MemberDTO member;
	
	public void signIn(SignInDTO dto) {
		SignInMapper mapper = sqlSession.getMapper(SignInMapper.class);
		this.member = mapper.signIn(dto);
	}
	
	public boolean isSignIn() {
		if(member != null)
			if(this.member.isMemberData())
				return true;
		
		return false;
	}
	
	public String getEmail() {
		if(!isSignIn())
			return null;
		
		return this.member.getEmail();
	}
	
	public String getNick() {
		if(!isSignIn())
			return null;
		
		return this.member.getNick();
	}
	
	public String getLevel() {
		if(!isSignIn())
			return null;
		
		return this.member.getLevel();
	}
}
