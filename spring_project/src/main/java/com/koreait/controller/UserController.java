package com.koreait.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreait.domain.UserDTO;
import com.koreait.service.MailSendService;
import com.koreait.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user/*")

public class UserController {
	@Setter(onMethod_=@Autowired)
	UserService userService;
	@Setter(onMethod_=@Autowired)
	MailSendService mailService;
	
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
		if(userService.userJoin(user)) {
			return "/user/joinOk";
		}
		return "/user/joinForm"; 
	}
	@GetMapping("/joinOk")
	public String joinOk(UserDTO user, Model model) {
		log.info("이메일 인증 진입");
		userService.userAuth(user.getUserEmail());
		model.addAttribute("userEmail", user.getUserEmail());
		log.info("이메일 주소 : "+user.getUserEmail());
		return "/user/joinConfirm"; 
	}
	@GetMapping("/joinConfirm")
	public void joinConfirm() {}
	
	@ResponseBody
	@PostMapping("/checkId")
	public int checkId(@RequestBody String userId) {
		log.info("checkId : Controller 진입");
		int result=userService.checkId(userId);
		log.info("중복여부 : "+result);
		if(result==0) {return 1;} else {return 0;}
	}
	@GetMapping("/login")
	public String login() {
		log.info("로그인 Get 진입");
		return "/user/login";
	}
	@PostMapping("/login")
	public String login(UserDTO user) {
		userService.login(user);
		return "redirect:/product/newList";
	}
}
