package com.koreait.service;

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
public class CartServiceTest {
	@Setter(onMethod_=@Autowired)
	CartService cartService;
	
//	@Test
	public void cartListTest() {
		String userId="apple";
		Criteria cri=new Criteria();
		cartService.cartList(userId, cri);
	}
//	@Test
//	public void getTotalTest() {
//		String userId="apple";
//		Criteria cri=new Criteria();
//		cartService.getTotal(cri);
//	}
	@Test
	public void deleteTest() {
		CartDTO cart=new CartDTO();
		cart.setCno(2);
		cart.setUserId("apple");
		cartService.deleteCart(cart);
	}
}
