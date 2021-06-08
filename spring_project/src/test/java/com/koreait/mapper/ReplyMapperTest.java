package com.koreait.mapper;

import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.koreait.domain.Criteria;
import com.koreait.domain.ReplyDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTest {
	@Setter(onMethod_=@Autowired)
	ReplyMapper replyMapper;
	
	Long[] arBno= {147L,146L,105L,100L,98L};
	
//	@Test
	public void mapperTest() {
		log.info(replyMapper);
	}
//	@Test
	public void insertReplyTest() {
		IntStream.rangeClosed(1, 10).forEach(i ->{
			ReplyDTO reply=new ReplyDTO();
			reply.setBno(arBno[i % 5]);
			reply.setReply("댓글 테스트"+i);
			reply.setReplyer("replyer"+i);
			
			replyMapper.insertReply(reply);
		});
	}
//	@Test
	public void readReplyTest() {
		replyMapper.readReply(arBno[0]).forEach(reply->log.info(reply));
	}
//	@Test
	public void getReplyTest() {
		log.info(replyMapper.getReply(1L));
	}
//	@Test
	public void deleteReplyTest() {
		log.info(replyMapper.deleteReply(1L));
	}
//	@Test
	public void modifyReplyTest() {
		ReplyDTO reply=replyMapper.getReply(2L);
		reply.setReply("수정된댓글");
		log.info(replyMapper.modifyReply(reply));
	}
//	@Test
	public void getListWithPaging() {
		Criteria cri=new Criteria();
		replyMapper.getListWithPaging(cri, arBno[0]).forEach(reply->log.info(reply));
	}
}
