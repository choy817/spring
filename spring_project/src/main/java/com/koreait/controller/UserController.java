package com.koreait.controller;



import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.domain.UserDTO;
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
	BCryptPasswordEncoder pwdEncoder;
	
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
		int count=userService.checkId(user.getUserId());
		log.info("회원가입 리턴값:"+count);
		if(count==0) {
			String en_pw=pwdEncoder.encode(user.getUserPw());
			user.setUserPw(en_pw);
			userService.userJoin(user);
			return "/user/joinOk";
		}
		return "/user/joinForm"; 
	}
	
	@ResponseBody
	@RequestMapping(value="/checkId", method=RequestMethod.POST, produces="application/json")
	public Map<Object, Object> checkId(@RequestBody String userId){
		Map<Object, Object> map=new HashMap<Object, Object>();
		int result=0;
		result=userService.checkId(userId);
		map.put("check", result);
		return map;
	}
	@GetMapping("/joinOk")
	public String joinOk(UserDTO user, Model model) {
		log.info("이메일 인증 진입");
		userService.userAuth(user.getUserEmail());
		model.addAttribute("userEmail", user.getUserEmail());
		log.info("이메일 주소 : "+user.getUserEmail());
		return "/user/joinConfirm"; 
	}
	@GetMapping("/login")
	public String login() {
		log.info("로그인 Get 진입");
		return "/user/login";
	}
	@PostMapping("/login")
	public String login(UserDTO user,HttpSession session, RedirectAttributes rttr) {
		//인증상태 확인
		if(userService.checkCert(user)==1) {
			//로그인
			UserDTO login=userService.login(user);
			//비밀번호 비교
			// 암호화되지 않은 비밀번호(raw-)와 암호화된 비밀번호(encoded-)가 일치하는지 비교
			 boolean pwMatch=pwdEncoder.matches(user.getUserPw(), login.getUserPw());
			 if(login != null && pwMatch ==true) {
				 log.info("정보 일치");
//				 session.setAttribute("user",login.getUserName());
				 session.setAttribute("user",user);
				 return "redirect:/product/newList";
			 }else {
				 log.info("정보 불일치");
				session.setAttribute("user", null);
				rttr.addFlashAttribute("msg",false);
			}
		}
		return "/user/loginFail";
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		return "redirect:/product/newList";
	}
}
