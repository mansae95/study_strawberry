package com.study.strawberry.dto.signin;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberDTO {
	private String email;
	private String nick;
	private String level;
	
	public boolean isMemberData() { // null이 모두 아니라면 true
		if(this.email != null && this.nick != null && this.level != null)
			return true;
		return false;
	}
}
