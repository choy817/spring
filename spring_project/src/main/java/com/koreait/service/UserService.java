package com.koreait.service;

import com.koreait.domain.UserDTO;

public interface UserService {
	//회원가입
	public boolean userJoin(UserDTO user); 
	//아이디 중복검사
	public int checkId(String userId);
	//로그인
	public UserDTO login(UserDTO user);
	
//	public void joinOk(UserDTO user);
	
	public void userAuth(String userEmail);
	
}
