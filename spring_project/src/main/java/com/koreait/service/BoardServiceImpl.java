package com.koreait.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.domain.BoardDTO;
import com.koreait.domain.Criteria;
import com.koreait.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class BoardServiceImpl implements BoardService {
	@Setter(onMethod_=@Autowired)
	BoardMapper mapper;
	
	//리스트 가져오기
	@Override
	public List<BoardDTO> getList() {
		log.info("getList : Serivce진입");
		return mapper.getList();
	}
	//검색기준 적용된 리스트 가져오기
	@Override
	public List<BoardDTO> getList(Criteria cri) {
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {
		return mapper.getTotal(cri);
	}

}
