package com.study.strawberry.sign_up.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class SignUpMemberDTO {
	
	@NotBlank(message = "이메일을 입력해 주세요.")
	@Email(message = "이메일 형식이 올바르지 않습니다.")
	private String email;
	
	@NotBlank(message = "패스워드를 입력해 주세요.")
	private String password;
	
	@NotBlank(message = "별명을 입력해주세요.")
	private String nickname;
	
	private String adAgreeYn;
	
}
