package com.koreait.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration //서블릿 컨텍스트 객체 사용 시
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class UserControllerTest {
	//실제 spring에서 사용하는 context를 받아옴
	@Setter(onMethod_=@Autowired)
	WebApplicationContext context;
	MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc=MockMvcBuilders.webAppContextSetup(context).build();
	}
	
//	@Test
	public void joinTest() throws Exception {
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/user/joinOk")));
	}
//	@Test
	public void checkIdTest() throws Exception{
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("user/checkId")));
	}
	@Test
	public void loginTest() throws Exception{
		log.info(mockMvc.perform(MockMvcRequestBuilders.post("/user/login")
				.param("userId", "apple")
				.param("userPw", "Abcd1234!")));
	}
//	@Test
	public void authTest() throws Exception{
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("user/joinOk"))
				.andReturn().getModelAndView()
				);
	}
}
