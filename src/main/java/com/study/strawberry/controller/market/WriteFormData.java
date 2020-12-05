package com.study.strawberry.controller.market;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter @Getter
@ToString
public class WriteFormData {
	private MultipartFile thumbnail;
	private String productName;
	private int price;
	private int sale;
	private String contents;
}
