package com.koreait.service;

import java.util.List;

import com.koreait.domain.BoardDTO;
import com.koreait.domain.Criteria;

public interface BoardService {
	//리스트 가져오기
	List<BoardDTO> getList();
	//검색기준 적용된 리스트 가져오기
	List<BoardDTO> getList(Criteria cri);
	
	int getTotal(Criteria cri);
}
