package com.study.strawberry.sign_up.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.strawberry.sign_up.SignUpMapper;

@Service
public class SignUpTokenService {
	
	@Autowired
    private SqlSession sqlSession;

	private SignUpMapper mapper;
	
	public void setSqlSession() {
		mapper = sqlSession.getMapper(SignUpMapper.class);
	}
	
	// Token으로 AdAgreeYn 조회
	public String selectAdAgreeYnByToken(String token) {
		return mapper.selectAdAgreeYnByToken(token);
	}
	
	
}
