package com.koreait.mapper;

import com.koreit.domain.UserDTO;

public interface UserMapper {
	//회원가입
	public void userJoin(UserDTO user);
	//아이디 검사
	public int checkId(String userId);
	//로그인
	public int login(String userId,String userPw);
}
