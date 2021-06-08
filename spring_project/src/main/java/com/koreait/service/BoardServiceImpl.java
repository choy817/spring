package com.koreait.service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.koreait.domain.BoardDTO;
import com.koreait.domain.Criteria;
import com.koreait.mapper.BoardMapper;
import com.koreait.util.FileUtils;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class BoardServiceImpl implements BoardService {
	@Setter(onMethod_=@Autowired)
	BoardMapper boardMapper;

	@Resource(name="fileUtils")
	FileUtils fileUtils;
	
	//리스트 가져오기
	@Override
	public List<BoardDTO> getList() {
		log.info("getList : Serivce진입");
		return boardMapper.getList();
	}
	//검색기준 적용된 리스트 가져오기
	@Override
	public List<BoardDTO> getList(Criteria cri) {
		return boardMapper.getListWithPaging(cri);
	}
	//총 갯수
	@Override
	public int getTotal(Criteria cri) {
		return boardMapper.getTotal(cri);
	}
	//글쓰기
	@Override
	public void write(BoardDTO board, MultipartHttpServletRequest request) {
		//파일제외 글쓰기
		boardMapper.write(board);
		MultipartHttpServletRequest multi=(MultipartHttpServletRequest)request;
		Iterator<String> iter=multi.getFileNames();
		MultipartFile multipartFile=null;
			
		while(iter.hasNext()) {
			multipartFile =multi.getFile(iter.next());
			//file이 비어있지 않다면 정보 출력
			if(multipartFile.isEmpty()==false) {
				log.info("------------file start------------");
				log.info("name : "+multipartFile.getName());
				log.info("fileName : "+multipartFile.getOriginalFilename());
				log.info("size : "+multipartFile.getSize());
				log.info("------------file end--------------");
			}
		}
		try {
				List<Map<String, Object>> list=fileUtils.parseInsertFileInfo(board,request);
				int size = list.size();
				for(int i=0; i<size; i++){ 
					log.info("list : "+list.get(i));
					boardMapper.insertFile(list.get(i)); 
				}
			
				
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//게시글 상세보기
	@Override
	public BoardDTO view(Long bno) {
		return boardMapper.read(bno);
	}
	//파일 조회
	@Override
	public BoardDTO selectFile(long bno) {
		return boardMapper.selectFile(bno);
	}
	//파일 다운로드
	@Override
	public BoardDTO fileDown(int fileNo) {
		return boardMapper.fileDown(fileNo);
	}
	//게시글 삭제
	@Override
	public boolean delete(Long bno) {
		return boardMapper.delete(bno)==1;//삭제성공시 1
	}
	//게시글 조회수 증가
	@Override
	public int viewsCnt(Long bno) {
		return boardMapper.viewsCnt(bno);
	}
	//게시글 수정
	@Override
	public int boardModify(BoardDTO board, String[] files,String[] fileNames, MultipartHttpServletRequest request) throws Exception{
		boardMapper.boardModify(board);
		boardMapper.fileDelete(board);
		int result = 0;
		//request에 있는 파일 정보를 list로 변환
		List<Map<String, Object>> list=fileUtils.parseUpdateFileInfo(board, files, fileNames, request);
		Map<String, Object> tempMap=null;
		int size=list.size();
			
		for (int i = 0; i < size; i++) {
			tempMap=list.get(i);
			//신규로 저장될 파일일 경우
			if(tempMap.get("isNew").equals("Y")){
				result=boardMapper.insertFile(tempMap);
			//기존에 저장되어있는 파일일 경우	
			}else {
				result=boardMapper.fileModify(tempMap);
			}
		}
		return result;
	}
	//첨부파일 수정
//	@Override
//	public int fileModify(BoardDTO board, String[] files,String[] fileNames, MultipartHttpServletRequest request) throws Exception{
//		int result = 0;
//		List<Map<String, Object>> list=fileUtils.parseUpdateFileInfo(board, files, fileNames, request);
//		Map<String, Object> tempMap=null;
//		int size=list.size();
//			
//		for (int i = 0; i < size; i++) {
//			tempMap=list.get(i);
//			if(tempMap.get("isNew").equals("Y")){
//				result=boardMapper.fileDelete(tempMap);
//			}else {
//				result=boardMapper.fileModify(tempMap);
//			}
//		}
//		return result;
//	}
	
}
