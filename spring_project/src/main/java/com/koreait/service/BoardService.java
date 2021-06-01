package com.koreait.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.koreait.domain.BoardDTO;
import com.koreait.domain.Criteria;

public interface BoardService {
	//리스트 가져오기
	public List<BoardDTO> getList();
	//검색기준 적용된 리스트 가져오기
	public List<BoardDTO> getList(Criteria cri);
	//총 갯수
	public int getTotal(Criteria cri);
	//글쓰기
	public void write(BoardDTO board, MultipartHttpServletRequest request);
	//게시글 상세보기
	public BoardDTO view(Long bno);
}
