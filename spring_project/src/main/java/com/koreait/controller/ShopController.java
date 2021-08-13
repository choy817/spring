package com.koreait.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.koreait.domain.BestSellerDTO;
import com.koreait.domain.Criteria;
import com.koreait.domain.PageDTO;
import com.koreait.service.ShopService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/shop/*")
public class ShopController {
	
	@Setter(onMethod_=@Autowired)
	ShopService shopService;
	
	@GetMapping("/newList")
	public void newList(Criteria cri, Model model) throws Exception{
		log.info("newList : Controller");
		log.info("cri: "+cri);
		model.addAttribute("newList",shopService.getList(cri));
		model.addAttribute("pageMaker",new PageDTO(shopService.getTotal(cri), cri));
	}
	@GetMapping("/prodDesc")
	public void prodDesc(@RequestParam("pno") Long pno, Model model ) {
		log.info("prodDesc : Controller ----->" + pno);
		model.addAttribute("desc",shopService.prodDesc(pno));
		
	}
	@GetMapping("/order")
	public void order() {
		
	}
	@GetMapping("/bestList")
	public void bestList(Criteria cri, Model model) {
		log.info("bestList : Controller");
		model.addAttribute("bestList", shopService.bestList());
	}
	@GetMapping("/bestDesc")
	public void bestDesc(@RequestParam("bestNo")Long bestNo, Model model) {
		log.info("bestDesc : Controller");
		model.addAttribute("bestDesc", shopService.bestDesc(bestNo));
	}
}
