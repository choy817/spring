package com.koreait.mapper;

import java.util.List;

import com.koreait.domain.BoardDTO;
import com.koreait.domain.Criteria;

public interface BoardMapper {

	public List<BoardDTO> getList();

	public List<BoardDTO> getListWithPaging(Criteria cri);
	
	public int getTotal(Criteria cri);

	
	

}
