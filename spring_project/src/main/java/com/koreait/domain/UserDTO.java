package com.koreait.domain;

import lombok.Data;

@Data
public class UserDTO {
	private int userNo;
	private String userId;
	private String userName;
	private String userPw;
	private String userPwCheck;
	private String userEmail;
	private String sendNumber;
	private String userPhone;
	private String userPostcode;
	private String userAddr;
	private String userDetailAddr;
	private String userEtcAddr;
	private int userCertification;
}

