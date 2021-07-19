package com.koreait.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/terms/*")
public class TermsController {
	
	@GetMapping("/mailRefusal")
	public void mailRefusal() {
		log.info("mailRefusal : Controller");
	}
	@GetMapping("/personInfo")
	public void personInfo() {
		log.info("personInfo : Controller");
	}

}
