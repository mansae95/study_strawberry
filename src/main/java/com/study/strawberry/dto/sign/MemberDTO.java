package com.study.strawberry.dto.sign;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberDTO {
	private String email;
	private String nick;
	private String level;
	
	public boolean isMemberData() {
		if(this.email != null && this.nick != null && this.level != null)
			return true;
		return false;
	}
}
