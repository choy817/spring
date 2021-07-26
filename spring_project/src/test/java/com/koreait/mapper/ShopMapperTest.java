package com.koreait.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.koreait.domain.Criteria;
import com.koreait.domain.ShopDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ShopMapperTest {
	@Setter(onMethod_=@Autowired)
	ShopMapper shopMapper;
	
//	@Test
	public void newListTest() {
		ShopDTO shop=new ShopDTO();
		shopMapper.newList();
	}
//	@Test
	public void getTotlaTest() {
		Criteria cri=new Criteria();
		shopMapper.getTotal(cri);
	}
	@Test
	public void getListTest() {
		Criteria cri=new Criteria();
		shopMapper.getListWithPaging(cri);
	}
}
