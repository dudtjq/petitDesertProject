package com.petitdesert.page.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class MainViewController {
	
	@GetMapping("/main/view")
	public String mainView() {
		
		return "main/view";
		
	}

}
