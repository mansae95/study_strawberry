package com.study.strawberry.sign_up.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SignUpMemberDTO {
	
	private String email;
	private String pwd;
	private String nick;
	private String adAgreeYn;
	
}
