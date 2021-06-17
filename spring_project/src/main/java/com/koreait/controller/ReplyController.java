package com.koreait.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.koreait.domain.Criteria;
import com.koreait.domain.ReplyDTO;
import com.koreait.domain.ReplyPageDTO;
import com.koreait.service.ReplyService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/replies/*")
@Log4j
public class ReplyController {
	@Setter(onMethod_=@Autowired)
	ReplyService replyService;
	
	//댓글 등록
	//								요청							응답
	@PostMapping(value="/create", consumes="application/json", produces= MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> create(@RequestBody ReplyDTO reply){
		log.info("create : Controller....."+reply);
		int insertCnt=replyService.insertReply(reply);
		log.info("Reply return : "+insertCnt);
		//js에서 데이터를 받는다
		return insertCnt==1? new ResponseEntity<>("success",HttpStatus.OK)
				: new ResponseEntity<>("fail",HttpStatus.INTERNAL_SERVER_ERROR); 
	}
	//댓글 조회(한 개만)
	@GetMapping(value="/{rno}",produces = {MediaType.APPLICATION_JSON_UTF8_VALUE,MediaType.TEXT_XML_VALUE})
	public ResponseEntity<ReplyDTO> read(@PathVariable("rno") Long rno){
		log.info("read : Controller....."+rno);
		return new ResponseEntity<ReplyDTO>(replyService.getReply(rno),HttpStatus.OK);
	}
	//댓글 조회(전체)
	//게시글번호, 페이지번호
	@GetMapping(value="/pages/{bno}/{page}",produces= {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReplyPageDTO> geList(@PathVariable("bno") Long bno, @PathVariable("page") int page){
		log.info("getList : Controller");
		Criteria cri=new Criteria(page,10);
		return new ResponseEntity<ReplyPageDTO>(replyService.getListWithPaging(cri, bno),HttpStatus.OK);
	}
	//댓글 삭제
	@DeleteMapping(value="/{rno}",produces=MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> delete(@PathVariable("rno") Long rno) {
		log.info("delete : Controller....."+rno);
		int result=replyService.deleteReply(rno);
		return result==1? new ResponseEntity<String>("success",HttpStatus.OK)
				: new ResponseEntity<String>("fail",HttpStatus.INTERNAL_SERVER_ERROR);
	}
	//댓글 수정
	@RequestMapping(method= {RequestMethod.PUT, RequestMethod.PATCH},value="/{rno}",
			consumes="application/json", produces=MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> modify(@RequestBody ReplyDTO reply,@PathVariable("rno") Long rno){
		log.info("modify : Controller..."+rno);
		log.info("modify : "+reply);
		reply.setRno(rno);
		
		return replyService.modifyReply(reply)==1? new ResponseEntity<String>("success",HttpStatus.OK)
				: new ResponseEntity<String>("fail",HttpStatus.INTERNAL_SERVER_ERROR);
	}
 }
