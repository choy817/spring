package com.koreait.service;

import java.util.List;

import com.koreait.domain.CartDTO;
import com.koreait.domain.Criteria;

public interface CartService {
	//장바구니 갯수
	public int countCart(CartDTO cart);
	//장바구니 추가
	public void insertCart(CartDTO cart);
	//장바구니 목록
	public List<CartDTO> cartList(String userId, Criteria cri);
	//장바구니 전체 목록 갯수
	public int getTotal(String userId);
	//장바구니 삭제
	public void deleteCart(CartDTO cart);
}
