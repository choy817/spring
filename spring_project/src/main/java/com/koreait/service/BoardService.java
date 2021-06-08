package com.koreait.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.koreait.domain.BoardDTO;
import com.koreait.domain.Criteria;

public interface BoardService {
	//리스트 가져오기
	public List<BoardDTO> getList();
	//검색기준 적용된 리스트 가져오기
	public List<BoardDTO> getList(Criteria cri);
	//총 갯수
	public int getTotal(Criteria cri);
	//글쓰기
	public void write(BoardDTO board, MultipartHttpServletRequest request);
	//게시글 상세보기
	public BoardDTO view(Long bno);
	//파일 조회
	public BoardDTO selectFile(long bno);
	//파일 다운로드
	public BoardDTO fileDown(int fileNo);
	//게시글 삭제(controller에서 조건식 사용하지 않고 service에서 boolean으로 처리)
	public boolean delete(Long bno);
	//게시글 조회수 증가
	public int viewsCnt(Long bno);
	//게시글 수정
	public int boardModify(BoardDTO board, String[] files,String[] fileNames, MultipartHttpServletRequest request) throws Exception;
	//첨부파일 수정
//	public int fileModify(BoardDTO board,String[] files,String[] fileNames, MultipartHttpServletRequest request) throws Exception;
}
