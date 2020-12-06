package com.study.strawberry.dao.sign;

import com.study.strawberry.dto.sign.MemberDTO;
import com.study.strawberry.dto.sign.SignDTO;

public interface SignMapper {
	public MemberDTO signIn(SignDTO dto);
}
