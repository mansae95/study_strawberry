package com.study.strawberry.service.sign;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.strawberry.dao.sign.SignMapper;
import com.study.strawberry.dto.sign.MemberDTO;
import com.study.strawberry.dto.sign.SignDTO;

@Service
public class SignService {
	@Autowired
    private SqlSession sqlSession;
	private MemberDTO member;
	
	public void signIn(SignDTO dto) {
		SignMapper mapper = sqlSession.getMapper(SignMapper.class);
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
