package com.study.strawberry.sign_up;

import java.util.Map;

public interface SignUpMapper {

	public int insertToken(Map<String,Object> param);

	// 프로모션 정보 수집 동의 내역 확인 by 토큰
	public String selectAdAgreeYnByToken(String token);
    
	// 토큰 삭제
	public void deleteByToken(String token);
	
}


