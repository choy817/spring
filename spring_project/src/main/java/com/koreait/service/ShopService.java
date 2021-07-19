package com.koreait.service;

import java.io.IOException;
import java.util.List;

import com.koreait.domain.ShopDTO;

public interface ShopService {
	//리스트크롤링
	public List<ShopDTO> getNewList() throws IOException;
	//도서 상세보기
	public ShopDTO prodDesc(Long pno);
}
