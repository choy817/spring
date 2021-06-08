package com.koreait.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.koreait.domain.Criteria;
import com.koreait.domain.ReplyDTO;

public interface ReplyMapper {
	public int insertReply(ReplyDTO reply);
	//n번 개시물의 댓글 가져오기
	public List<ReplyDTO> readReply(Long bno);
	//댓글 가져오기
	public ReplyDTO getReply(Long rno);
	//댓글 하나만 삭제
	public int deleteReply(Long bno);
	//댓글 수정
	public int modifyReply(ReplyDTO reply);
	//댓글 목록
	public List<ReplyDTO> getListWithPaging(@Param("cri") Criteria cri, @Param("bno")Long bno);
	//
	public int getTotal(Long bno);
}
