package com.koreait.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.koreit.domain.UserDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UserServiceTest {
	@Setter(onMethod_=@Autowired)
	UserService userService;
	
//	@Test
	public void joinTest() {
		// given : 주어진 것들로
		UserDTO user=new UserDTO();
		user.setUserNo(9);
		user.setUserId("apple");
		user.setUserName("김사과");
		user.setUserPw("abcd1234");
		user.setUserPwCheck("abcd1234");
		user.setUserEmail("apple@apple.com2");
		user.setSendNumber("1234");
		user.setUserPhone("01000000000");
		user.setUserPostcode("01234");
		user.setUserAddr("테스트시 테스트구");
		user.setUserDetailAddr("테스트동");
		user.setUserEtcAddr("테스트호");
        // when : 이걸 실행했을때
        userService.userJoin(user);
        // then : 이런 결과가 나와야 됨
        log.info(user);
	}
	
	@Test
	public void checkIdTest() {
		UserDTO user=new UserDTO();
		String userId="dafhdfh";
		userService.checkId(userId);
		log.info(userService.checkId(userId));
	}
	
}
