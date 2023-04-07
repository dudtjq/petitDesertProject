package com.petitdesert.page.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hello")
public class HelloContorller {
	
//	@RequestMapping("/hello")
//	@ResponseBody
//	public String helloWorld() {
//		
//		return "hello world";
//		
//	}
	
	@GetMapping("/world")
	public String jspHello() {
		
		return "hello";
		
	}
	

}
