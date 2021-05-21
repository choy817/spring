package com.koreait.service;

import com.koreit.domain.UserDTO;

public interface UserService {
	//회원가입
	public void userJoin(UserDTO user); 
	//아이디 중복검사
	public int checkId(String userId);
}
