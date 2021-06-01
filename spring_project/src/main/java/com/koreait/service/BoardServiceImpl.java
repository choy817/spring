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
	BoardMapper mapper;

	@Resource(name="fileUtils")
	FileUtils fileUtils;
	
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
	//총 갯수
	@Override
	public int getTotal(Criteria cri) {
		return mapper.getTotal(cri);
	}
	//글쓰기
	@Override
	public void write(BoardDTO board, MultipartHttpServletRequest request) {
		//파일제외 글쓰기
		mapper.write(board);
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
					mapper.insertFile(list.get(i)); 
				}
			
				
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//게시글 상세보기
	@Override
	public BoardDTO view(Long bno) {
		return mapper.read(bno);
	}

}
