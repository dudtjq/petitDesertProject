package com.petitdesert.page.information;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/information")
public class informationContorller {
	
	@GetMapping("/myInformation/view")
	public String informationview() {
		
		return "information/myInformation";
		
	}

}
