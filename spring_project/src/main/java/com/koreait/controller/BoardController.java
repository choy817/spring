package com.koreait.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.koreait.domain.BoardDTO;
import com.koreait.domain.Criteria;
import com.koreait.domain.PageDTO;
import com.koreait.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	@Setter(onMethod_=@Autowired)
	BoardService boardService;
	
	@Setter(onMethod_=@Autowired)
	BCryptPasswordEncoder pwdEncoder;
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		log.info("list : Controller");
		log.info("cri: "+cri);
		model.addAttribute("list",boardService.getList(cri));
		log.info(boardService.getList(cri));
		model.addAttribute("pageMaker",new PageDTO(boardService.getTotal(cri), cri));
	}
	@GetMapping("/write")
	public void write() {
		log.info("wirte : Controller(Get)");
	}
	
	@PostMapping("/write")
	public String write(BoardDTO board, MultipartHttpServletRequest request) {
		log.info("write : Controller(Post)");
		log.info("board : "+board);
		boardService.write(board,request);
		return "redirect:/board/list";
	}
	
	@GetMapping("/view")
	public void view(@RequestParam("bno") Long bno,@ModelAttribute("cri") Criteria cri,Model model) {
		log.info("view : Controller");
		model.addAttribute("board",boardService.view(bno));
	}
}
