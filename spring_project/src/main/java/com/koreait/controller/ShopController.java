package com.koreait.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.koreait.domain.ShopDTO;
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
	public void newList(Model model) throws Exception{
		log.info("newList : Controller");
		model.addAttribute("newList",shopService.getNewList());
	}
	@GetMapping("/prodDesc")
	public void prodDesc(@RequestParam("pno") Long pno, Model model ) {
		log.info("prodDesc : Controller ----->" + pno);
		model.addAttribute("desc",shopService.prodDesc(pno));
		
	}
	@GetMapping("/order")
	public void order() {
		
	}
}
