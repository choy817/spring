package com.koreait.controller;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		//조회수 증가
		boardService.viewsCnt(bno);
		model.addAttribute("file", boardService.selectFile(bno));
	}
	
	@GetMapping("/modify")
	public void modify(@RequestParam("bno") Long bno,@ModelAttribute("cri") Criteria cri,Model model) {
		log.info("modify : Controller(Get)");
		model.addAttribute("board",boardService.view(bno));
		log.info(model.addAttribute("file", boardService.selectFile(bno)));
	}
	
	@PostMapping("/modify")
	public String modify(BoardDTO board,String[] files,String[] fileNames,MultipartHttpServletRequest request,RedirectAttributes rttr,Criteria cri) throws Exception {
		log.info("modify : Controller(Post)");
		log.info(board);
		if(boardService.boardModify(board, fileNames, fileNames, request)==1) {
			log.info("게시글 수정 성공");
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/board/list"+cri.getListLink();
	}
	
	@GetMapping("/fileDown")
	public void fileDown(@RequestParam("fileNo")int fileNo, HttpServletResponse response) throws IOException {
		log.info("fileDown : Controller");
		BoardDTO board=boardService.fileDown(fileNo);
		String fileName=board.getFileName();
		String realName=board.getRealName();
		
		byte fileByte[] =FileUtils.readFileToByteArray(new File("C:\\project_Spring\\file\\"+fileName));
		
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition", "attachment; fileName=\""+URLEncoder.encode(realName, "UTF-8")+"\";");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();
		
	}
	
	@PostMapping("/delete")
	public String delete(@RequestParam("bno") Long bno,Criteria cri, RedirectAttributes rttr) {
		log.info("delete : Cotroller");
		if(boardService.delete(bno)) {
			rttr.addFlashAttribute("result","success");
		}
		
		return "redirect:/board/list"+cri.getListLink();
	}
}
