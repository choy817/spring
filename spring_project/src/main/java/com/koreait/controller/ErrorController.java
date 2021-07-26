package com.koreait.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/error/*")
@Log4j
public class ErrorController {
	@GetMapping("/error404")
	public void error404() {
		log.info("Controller : error404");
	}
}
