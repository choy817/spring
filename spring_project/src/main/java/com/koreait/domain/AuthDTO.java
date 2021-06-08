package com.koreait.domain;

import lombok.Data;

@Data
public class AuthDTO {
	private String userEmail;
	private String authKey;
}
