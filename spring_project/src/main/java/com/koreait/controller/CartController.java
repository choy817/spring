package com.koreait.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreait.domain.CartDTO;
import com.koreait.domain.Criteria;
import com.koreait.domain.PageDTO;
import com.koreait.domain.UserDTO;
import com.koreait.service.CartService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/cart/*")
public class CartController {
	@Setter(onMethod_=@Autowired)
	CartService cartService;
	
	@PostMapping("/insertCart")
	public String insertCart(CartDTO cart, HttpSession session) {
		log.info("insertCart : Controller(Post)");
		UserDTO user=(UserDTO) session.getAttribute("user");
		cart.setUserId(user.getUserId());
		
		if(cartService.countCart(cart)==0){
			cartService.insertCart(cart);
			return "redirect:/cart/cartList";
		}
		return "redirect:/shop/newList";
	}
	
	@GetMapping("/cartList")
	public void cartList(CartDTO cart, Criteria cri, Model model,HttpSession session) {
		log.info("cartList : Controller");
		UserDTO user=(UserDTO) session.getAttribute("user");
		model.addAttribute("cartList",cartService.cartList(user.getUserId(), cri));
	}
	
	//개별삭제
	@PostMapping("/deleteCart")
	public String deleteCart(CartDTO cart, HttpSession session) {
		log.info("deleteCart : Controller(Post) -----> 개별삭제");
		UserDTO user=(UserDTO) session.getAttribute("user");
		
		if(user!=null) {
			cart.setUserId(user.getUserId());
			cartService.deleteCart(cart);
			return "redirect:/cart/cartList";
		}
		return "/shop/newList";
		}
	//선택삭제
	@ResponseBody
	@PostMapping("/selectDeleteCart")							//ajax에서 전송받는 배열
	public String deleteCart(CartDTO cart,HttpSession session, @RequestParam("chbox[]") List<String> chArr) {
		log.info("deleteCart : Controller(Post) -----> 선택삭제");
		UserDTO user=(UserDTO) session.getAttribute("user");
		String userId=user.getUserId();
		
		long cno=0;
		String result="0";
		
		if(user!=null) {
			cart.setUserId(userId);
			
			//chArr이 가지고있는 값의 갯수만큼 반복
			for(String i : chArr) {
				cno=Long.parseLong(i);
				cart.setCno(cno);
				log.info(cno);
				cartService.deleteCart(cart);
			}
			//user정보가 있을 경우 result를 1로 변경
			result="1";
		}
		return result;
	}
}
