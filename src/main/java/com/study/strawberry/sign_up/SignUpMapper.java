package com.study.strawberry.sign_up;

import java.util.Map;

public interface SignUpMapper {

	public int insertToken(Map<String,Object> param);

	public String selectAdAgreeYnByToken(String token);
    
	public String deleteByToken(String token);
	
}


