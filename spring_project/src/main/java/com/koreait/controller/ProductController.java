package com.koreait.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/product/*")
public class ProductController {
	@GetMapping("/newList")
	public void newList() {
	}
	@GetMapping("/prodDesc")
	public void prodDesc() {
	}
}
