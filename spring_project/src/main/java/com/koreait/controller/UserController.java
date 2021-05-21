package com.koreait.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreait.service.UserService;
import com.koreit.domain.UserDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user/*")

public class UserController {
	@Setter(onMethod_=@Autowired)
	UserService userService;
	
	@GetMapping("/joinTerms")
	public void joinTerms() {
		log.info("회원약관 진입");
	}
	@GetMapping("/joinForm")
	public String joinForm() {
		log.info("회원가입Get 진입");
		return "/user/joinForm";
	}
	@PostMapping("/joinForm")
	public String joinForm(UserDTO user) {
		log.info("회원가입 진입");
		userService.userJoin(user);
		log.info("회원가입 성공");
		return "redirect:/user/joinOk";
	}
	@ResponseBody
	@GetMapping("/checkId")
	public int checkId(@RequestBody String userId) {
		log.info("checkId : Controller 진입");
		int result=userService.checkId(userId);
		log.info(result);
		if(result==0) {
			return 1;
		}else {
			return 0;
		}
	}
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	@GetMapping("/joinOk")
	public void joinOk() {}
	
}
