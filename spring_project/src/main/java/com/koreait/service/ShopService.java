package com.koreait.service;

import java.io.IOException;
import java.util.List;

import com.koreait.domain.BoardDTO;
import com.koreait.domain.Criteria;
import com.koreait.domain.ShopDTO;

public interface ShopService {
	//리스트크롤링
	public List<ShopDTO> getNewList();
	//검색기준 적용된 리스트 가져오기
	public List<BoardDTO> getList(Criteria cri) throws IOException;
	//도서 상세보기
	public ShopDTO prodDesc(Long pno);
	//총 갯수
	public int getTotal(Criteria cri);
}
