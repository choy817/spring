package com.koreait.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.domain.CartDTO;
import com.koreait.domain.Criteria;
import com.koreait.mapper.CartMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service@Log4j
public class CartServiceImpl implements CartService {
	@Setter(onMethod_=@Autowired)
	CartMapper cartMapper;
	
	//장바구니 갯수
	@Override
	public int countCart(CartDTO cart) {
		return cartMapper.countCart(cart);
	}
	//장바구니 추기
	@Override
	public void insertCart(CartDTO cart) {
		cartMapper.insertCart(cart);
	}
	//장바구니 목록
	@Override
	public List<CartDTO> cartList(String userId, Criteria cri) {
		return cartMapper.cartList(userId, cri);
	}
	//장바구니 전체 목록 갯수
	@Override
	public int getTotal(String userId) {
		return cartMapper.getTotal(userId);
	}
	//장바구니 삭제
	@Override
	public void deleteCart(CartDTO cart) {
		cartMapper.deleteCart(cart);
	}
}
