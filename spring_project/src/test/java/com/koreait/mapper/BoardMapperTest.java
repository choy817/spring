package com.koreait.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.koreait.domain.BoardDTO;
import com.koreait.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTest {
	@Setter(onMethod_=@Autowired)
	BoardMapper boardMapper;
	
//	@Test
	public void getListTest() {
		boardMapper.getList();
	}
	@Test
	public void getListWithPaging() {
		Criteria cri=new Criteria();
		cri.setAmount(10);
		cri.setPageNum(1);
		boardMapper.getListWithPaging(cri).forEach(board->{
			log.info("board: "+board);
		});
	}
}
