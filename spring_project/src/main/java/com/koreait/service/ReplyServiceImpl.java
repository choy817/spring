package com.koreait.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.domain.Criteria;
import com.koreait.domain.ReplyDTO;
import com.koreait.domain.ReplyPageDTO;
import com.koreait.mapper.ReplyMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReplyServiceImpl implements ReplyService{
	
	@Setter(onMethod_=@Autowired)
	ReplyMapper replyMapper;
	
	//댓글 추가
	@Override
	public int insertReply(ReplyDTO reply) {
		log.info("insert : Service....."+reply);
		return replyMapper.insertReply(reply);
	}
	//댓글 가져오기
	@Override
	public ReplyDTO getReply(Long rno) {
		log.info("getReply : Service....."+rno);
		return replyMapper.getReply(rno);
	}
	//댓글 수정
	@Override
	public int modifyReply(ReplyDTO reply) {
		log.info("modifyReply : Service....."+reply);
		return replyMapper.modifyReply(reply);
	}
	//댓글 삭제
	@Override
	public int deleteReply(Long rno) {
		log.info("deleteReply : Service....."+rno);
		return replyMapper.deleteReply(rno);
	}
	//댓글 목록
	@Override
	public ReplyPageDTO getListWithPaging(Criteria cri, Long bno) {
		log.info("getListWithPaging : Service....."+bno);
		return new ReplyPageDTO(replyMapper.getTotal(bno),replyMapper.getListWithPaging(cri, bno));
	}
	
}
