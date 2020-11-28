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

	// 회원가입 유효성 검사
	public boolean checkValidation(SignUpMemberDTO member) {
		
		String email = member.getEmail();
		String pwd = member.getPwd();
		String nick = member.getNick();
		
		if (pwd == null || pwd.equals("")
				|| nick == null || nick.equals("")) {
			return false;
		}
		
		if (checkEmailRegExp(email) 
				&& !isExistEmail(email)) {
			return true;
		}
		
		return false;
	}
	
	// 이메일 중복 검사
	private boolean isExistEmail(String email) {
		
		return mapper.selectEmail(email) != null ? true : false;
	}
	
	// 이메일 정규 표현식 확인
	private boolean checkEmailRegExp(String email) {
		
		String emailRegExp = "\\w+@[a-zA-Z0-9-]+\\.[a-zA-Z.]+$";
		
		return Pattern.matches(emailRegExp, email);
	}
	
	
	// 회원 등록
	public void insertMember(SignUpMemberDTO member) {
		mapper.insertMember(member);
	}
	
	
}
