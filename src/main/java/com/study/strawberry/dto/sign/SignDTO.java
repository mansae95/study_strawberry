package com.study.strawberry.dto.sign;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SignDTO {
	@NotBlank(message = "이메일을 입력해 주세요.")
	@Email(message = "이메일 형식이 올바르지 않습니다.")
	private String email;
	
	@NotBlank(message = "비밀번호를 입력해 주세요.")
	private String password;
	
	private String eMsg;
}
