package com.koreait.mapper;

import java.util.List;

import com.koreait.domain.ShopDTO;

public interface ShopMapper {
	//상품db저장
	public void insertProd(List<ShopDTO> list);
	//도서 상세보기
	public ShopDTO prodDesc(Long pno);
	//리스트 불러오기
	public List<ShopDTO> newList();
}
