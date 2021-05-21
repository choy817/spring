package com.koreait.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.mapper.UserMapper;
import com.koreit.domain.UserDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
//컨트롤러 -> 서비스 호출 -> DAO 호출 -> Mapper -> DB
@Service@Log4j
public class UserServiceImpl implements UserService{
	@Setter(onMethod_=@Autowired)
	UserMapper mapper;
	//회원가입
	@Override
	public void userJoin(UserDTO user) {
		log.info("userjoin 진입");
		mapper.userJoin(user);
	}
	
	@Override
	public int checkId(String userId) {
		log.info("checkId : Service 진입");
		return mapper.checkId(userId);
	}
	
}
