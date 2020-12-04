package com.study.strawberry.sign_up.repository;

import com.study.strawberry.sign_up.dto.SignUpMemberDTO;

public interface SignUpMemberMapper {
	
	// Email 중복확인을 위하여 Email 조회; 유니크키 이므로 리스트가 아닌 String으로 반환
	public String selectEmail(String email);

	// 닉네임 중복확인을 위하여 Email 조회; 유니크키 이므로 리스트가 아닌 String으로 반환
	public String selectNick(String nick);
	
	// 회원 등록
	public void insertMember(SignUpMemberDTO member);
	
}
