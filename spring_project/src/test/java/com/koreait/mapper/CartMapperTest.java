package com.koreait.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.koreait.domain.CartDTO;
import com.koreait.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartMapperTest {
	@Setter(onMethod_=@Autowired)
	CartMapper cartmapper;
	
//	@Test
//	public void cartListTest() {
//		Criteria cri=new Criteria();
//		String userId="apple";
//		log.info(cartmapper.cartList(userId, cri));
//	}
//	@Test
	public void getTotalTest() {
		String userId="apple";
		log.info(cartmapper.getTotal(userId));
	}
	@Test
	public void deleteTest() {
		CartDTO cart=new CartDTO();
		cart.setCno(1);
		cart.setUserId("apple");
		cartmapper.deleteCart(cart);
	}
}
