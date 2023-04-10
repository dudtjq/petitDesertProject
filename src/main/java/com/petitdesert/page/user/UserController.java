package com.petitdesert.page.user;

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
	
}
