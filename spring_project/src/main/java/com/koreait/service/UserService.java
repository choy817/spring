package com.koreait.service;

import com.koreait.domain.UserDTO;

public interface UserService {
	//회원가입
	public boolean userJoin(UserDTO user); 
	//아이디 중복검사
	public int checkId(String userId);
	//로그인
	public UserDTO login(UserDTO user);
	//인증상태 변경
	public void userAuth(String userEmail);
	//인증상태 확인
	public int checkCert(UserDTO user);
	//회원정보 수정
	public void userModify(UserDTO user);
	
}
