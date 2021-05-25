package com.koreait.mapper;

import org.apache.ibatis.annotations.Param;

import com.koreait.domain.UserDTO;

public interface UserMapper {
	//회원가입
	public boolean userJoin(UserDTO user);
	//아이디 검사
	public int checkId(String userId);
	//로그인
	public UserDTO login(UserDTO user);
	
	public int joinOk(@Param("userEmail")String userEmail, @Param("authKey")String authKey);
	
	public void userAuth(String userEmail);
	
	public int checkCert(UserDTO user);
	
	
}
