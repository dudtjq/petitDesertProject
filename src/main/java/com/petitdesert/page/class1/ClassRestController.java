package com.petitdesert.page.class1;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.petitdesert.page.class1.bo.ClassBO;

@RestController
@RequestMapping("/class")
public class ClassRestController {
	
	@Autowired
	private ClassBO classBO;
	
	@PostMapping("/class_up")
	@ResponseBody
	public Map<String, String> classUp(
			@RequestParam("className") String className
			, @RequestParam("introduce") String introduce
			, @RequestParam("price") String price
			, @RequestParam("file") MultipartFile file
			,  @RequestParam("category") String category
			, HttpSession session
			){
		
		int userId = (Integer)session.getAttribute("userId");
		
		Map<String, String> resultMap = new HashMap<>();
		
		int count = classBO.addClassUp(userId, className, introduce, price, file, category);
		
		if(count == 1) {
			resultMap.put("result", "success");
		}else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
		
		
	}
	
	
	@GetMapping("/class/delete")
	@ResponseBody
	public Map<String, String> deleteClass(
			@RequestParam(value="lessonId", required=false) int lessonId
			, HttpSession session
			){
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = classBO.deleteByLesson(userId, lessonId);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(count == 1) {
			resultMap.put("result", "success");
		}else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
		
	}
	
	

}


