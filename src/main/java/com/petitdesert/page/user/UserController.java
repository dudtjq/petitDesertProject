package com.petitdesert.page.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	// 회원 가입 페이지 보여주는 api
	@GetMapping("/signup/view")
	public String signup() {
		
		return "user/signup";
		
	}
	
	// 로그인 페이지 보여주는 api
	@GetMapping("/signin/view")
	public String signin() {
			
		return "user/signin";
		
	}
		
	// 로그아웃 기능 (RestController 가 아닌 Controller에서)
	@GetMapping("/signout")
	public String signout(HttpSession session) {
		
		// 로그아웃 기능 리무브 활용
		session.removeAttribute("userId");
		session.removeAttribute("userLoginId");
	
		// 리다이렉트 리턴 
		return "redirect:/user/main/view";
	
	}
	
}
