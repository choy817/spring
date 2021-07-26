package com.koreait.mapper;

import java.util.List;

import com.koreait.domain.BoardDTO;
import com.koreait.domain.Criteria;
import com.koreait.domain.ShopDTO;

public interface ShopMapper {
	//상품db저장
	public void insertProd(List<ShopDTO> list);
	//도서 상세보기
	public ShopDTO prodDesc(Long pno);
	//리스트 불러오기
	public List<ShopDTO> newList();
	//검색 기준이 포함된 리스트
	public List<BoardDTO> getListWithPaging(Criteria cri);
	//총 갯수
	public int getTotal(Criteria cri);
}
