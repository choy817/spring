package com.koreait.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user/*")
public class UserController {
	@GetMapping("/joinTerms")
	public void joinTerms() {
		log.info("joinTerms");
	}
	@GetMapping("/joinForm")
	public void joinForm() {
		
	}
	@GetMapping("/login")
	public void login() {
		
	}
	
}
