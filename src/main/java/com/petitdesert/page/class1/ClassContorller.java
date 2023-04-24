package com.petitdesert.page.class1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/class")
public class ClassContorller {
	
	@GetMapping("/new_class/view")
	public String classPage() {
		
		return "class/class";
		
	}

}
