package com.koreait.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.koreait.domain.Criteria;
import com.koreait.domain.PageDTO;
import com.koreait.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	
	BoardService boardService;
	
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
		
	}
	@GetMapping("/view")
	public void view() {
		
	}
}
