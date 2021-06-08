package com.koreait.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.koreait.domain.BoardDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTest {
	@Setter(onMethod_=@Autowired)
	BoardService boardService;
	
//	@Test
//	public void writeTest() {
//		BoardDTO board=new BoardDTO();
//		board.setTitle("서비스 테스트");
//		board.setContent("serviceTest");
//		board.setWriter("바나나2");
//		
//		boardService.write(board);
//		log.info(board);
//	}
//	@Test
	public void viewTest() {
		log.info(boardService.view(1L));
	}
//	@Test
	public void selectFileTest() {
		long bno=147L;
		boardService.selectFile(bno);
	}
//	@Test
	public void fileDownTest() {
		int fileNo=16;
		boardService.fileDown(fileNo);
	}
//	@Test
	public void deleteTest() {
		long bno=133L;
		boardService.delete(bno);
	}
//	@Test
	public void viewsCnt() {
		long bno=146L;
		boardService.viewsCnt(bno);
	}
//	@Test
//	public void boardModify() {
//		BoardDTO board=new BoardDTO();
//		board.setBno(146L);
//		board.setTitle("modifyServiceTest");
//		board.setContent("modifyTest입니다");
//		boardService.boardModify(board);
//	}
}
