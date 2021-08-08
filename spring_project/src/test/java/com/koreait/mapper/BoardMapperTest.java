package com.koreait.mapper;

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
		cri.setType("W");
		cri.setKeyword("김사과");
		boardMapper.getListWithPaging(cri).forEach(board->{
			log.info("board: "+board);
		});
	}
//	@Test
	public void writeTest() {
		BoardDTO board=new BoardDTO();
		board.setTitle("게시글 테스트");
		board.setContent("게시글 테스트입니다");
		board.setWriter("바나나");
		
		boardMapper.write(board);
		log.info(board);
	}
//	@Test
	public void viewTest() {
		long bno=1L;
		log.info(boardMapper.read(bno));
	}
//	@Test
	public void selectFileTest() {
		long bno=147L;
		boardMapper.selectFile(bno);
	}
//	@Test
	public void fileDownTest() {
		int fileNo=16;
		boardMapper.fileDown(fileNo);
		
	}
//	@Test
	public void deleteTest() {
		long bno=138L;
		boardMapper.delete(bno);
	}
//	@Test
	public void viewsCnt() {
		long bno=147L;
		boardMapper.viewsCnt(bno);
	}
//	@Test
	public void boardModifyTest() {
		BoardDTO board=new BoardDTO();
		board.setBno(147L);
		board.setTitle("게시글 수정 테스트");
		board.setContent("게시글 수정 MapperTest입니다");
		boardMapper.boardModify(board);
		
	}
}
