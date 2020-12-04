package com.study.strawberry.sign_up.service;

import java.util.regex.Pattern;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.strawberry.sign_up.dto.SignUpMemberDTO;
import com.study.strawberry.sign_up.repository.SignUpMemberMapper;

@Service
public class SignUpMemberService {
	
	@Autowired
    private SqlSession sqlSession;

	private SignUpMemberMapper mapper;
	
	public void setSqlSession() {
		mapper = sqlSession.getMapper(SignUpMemberMapper.class);
	}
	
	
	// 이메일 중복 검사
	// 중복 이메일이 존재하지 않는다면 true
	public boolean checkDuplEmail(String email) {
		return mapper.selectEmail(email) == null ? true : false;
	}
	
	
	// 이메일 정규 표현식 확인
	public boolean checkEmailRegExp(String email) {	
		String emailRegExp = "\\w+@[a-zA-Z0-9-]+\\.[a-zA-Z.]+$";
		
		return Pattern.matches(emailRegExp, email);
	}
	
	
	// 닉네임 중복 검사
	// 중복 닉네임이 존재하지 않는다면 true
	public boolean checkDuplNick(String nick) {
		return mapper.selectNick(nick) == null ? true : false;
	}
	
	
	// 회원 등록
	public void insertMember(SignUpMemberDTO member) {
		mapper.insertMember(member);
	}
}
