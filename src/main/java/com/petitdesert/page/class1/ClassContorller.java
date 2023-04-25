package com.petitdesert.page.class1;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.petitdesert.page.class1.bo.ClassBO;
import com.petitdesert.page.class1.model.Lesson;

@Controller
@RequestMapping("/class")
public class ClassContorller {
	
	@Autowired
	private ClassBO classBO;
	
	@GetMapping("/new_class/view")
	public String classPage(
			@RequestParam(value="category", required=false) String category
			, Model model
			, HttpSession session
			) {
		
		List<Lesson> LessonList = classBO.getLessonList(category);
		
		model.addAttribute("LessonList", LessonList);
		
		return "class/class";
		
	}

}
