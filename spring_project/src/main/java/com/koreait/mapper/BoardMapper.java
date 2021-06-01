package com.koreait.mapper;

import java.util.List;
import java.util.Map;

import com.koreait.domain.BoardDTO;
import com.koreait.domain.Criteria;

public interface BoardMapper {
	//목록
	public List<BoardDTO> getList();
	//검색 기준이 포함된 목록
	public List<BoardDTO> getListWithPaging(Criteria cri);
	//총 갯수
	public int getTotal(Criteria cri);
	//글 작성
	public void write(BoardDTO board);
	//글 상세보기
	public BoardDTO read(Long bno);
	//파일 첨부
	public void insertFile(Map<String, Object> map);
	
	

}
