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
	public int insertFile(Map<String, Object> map);
	//파일 조회
	public BoardDTO selectFile(long bno);
	//파일 다운로드
	public BoardDTO fileDown(int fileNo);
	//게시글 삭제
	public int delete(Long bno);
	//게시글 조회수 증가
	public int viewsCnt(Long bno);
	//게시물 수정
	public int boardModify(BoardDTO board);
	//첨부파일 수정
	public int fileModify(Map<String, Object> tempMap);
	//첨부파일 삭제
	public int fileDelete(BoardDTO board);
	
	

}
