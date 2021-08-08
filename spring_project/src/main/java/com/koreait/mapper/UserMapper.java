package com.koreait.mapper;

import org.apache.ibatis.annotations.Param;

import com.koreait.domain.UserDTO;

public interface UserMapper {
	//회원가입
	public boolean userJoin(UserDTO user);
	//아이디 검사
	public int checkId(String userId);
	//로그인, 회원정보 조회
	public UserDTO selectUser(UserDTO user);
	//이메일 인증
	public int joinOk(@Param("userEmail")String userEmail, @Param("authKey")String authKey);
	//이메일 인증 완료 시
	public void userAuth(String userEmail);
	//이메일 인증 확인
	public int checkCert(UserDTO user);
	//회원정보 수정
	public void userModify(UserDTO user);
	//회원 탈퇴
	public int userDelete(UserDTO user);
	//내가 쓴 글 보기
	//public void userWrote(String userId);
	
}
