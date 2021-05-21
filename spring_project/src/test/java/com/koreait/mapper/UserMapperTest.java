package com.koreait.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.koreait.domain.AuthDTO;
import com.koreait.domain.UserDTO;
import com.koreait.mapper.UserMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UserMapperTest {
	@Setter(onMethod_=@Autowired)
	UserMapper mapper;
	
//	@Test
//	회원가입
	public void joinInsertTest() {
		UserDTO user=new UserDTO();
		user.setUserNo(9);
		user.setUserId("banana");
		user.setUserName("반하나");
		user.setUserPw("abcd1234");
		user.setUserPwCheck("abcd1234");
		user.setUserEmail("cyjspringtest@gamil.com");
		user.setSendNumber("1234");
		user.setUserPhone("01000000000");
		user.setUserPostcode("01234");
		user.setUserAddr("테스트시 테스트구");
		user.setUserDetailAddr("테스트동");
		user.setUserEtcAddr("테스트호");
		
		mapper.userJoin(user);
		log.info(user);
		
	}
//	@Test
	public void checkIdTest() throws Exception{
		String userId1="dafhdfh";
		String userId2="apple";
		mapper.checkId(userId1);
		mapper.checkId(userId2);
	}
	
//	@Test
	public void login() throws Exception{
		UserDTO user=new UserDTO();
		user.setUserId("banana");
		user.setUserPw("abcd1234");
		mapper.login(user);
	}
	@Test
	public void authTest() throws Exception{
		UserDTO user=new UserDTO();
		user.setUserEmail("cyjspringtest@gmail.com");
		mapper.userAuth(user.getUserEmail());
		log.info(user);
	}
}
