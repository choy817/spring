package com.koreait.service;

import com.koreait.domain.Criteria;
import com.koreait.domain.ReplyDTO;
import com.koreait.domain.ReplyPageDTO;

public interface ReplyService {
	//댓글 추가
	public int insertReply(ReplyDTO reply);
	//댓글 가져오기
	public ReplyDTO getReply(Long rno);
	//댓글 수정
	public int modifyReply(ReplyDTO reply);
	//댓글 삭제
	public int deleteReply(Long rno);
	//댓글 목록
	public ReplyPageDTO getListWithPaging(Criteria cri, Long bno);
	
}
