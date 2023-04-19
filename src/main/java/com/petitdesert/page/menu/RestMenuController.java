package com.petitdesert.page.menu;

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

import com.petitdesert.page.menu.bo.MenuBO;

@RestController
@RequestMapping("/menu")
public class RestMenuController {
	
	@Autowired
	private MenuBO menuBO;
	
	@PostMapping("/menu_name")
	@ResponseBody
	public Map<String, String> menuUp(
			@RequestParam(value="menuName", required=false) String menuName
			, @RequestParam(value="price", required=false) String price
			, @RequestParam(value="introduce", required=false) String introduce
			, @RequestParam("file") MultipartFile file
			, @RequestParam(value="category", required=false) String category
			, HttpSession session	
			){
		
		int userId = (Integer)session.getAttribute("userId");
		
		Map<String, String> resultMap = new HashMap<>();
		
		int count = menuBO.addMenu(userId, menuName, price, introduce, file, category);
		
		if(count == 1) {
			resultMap.put("result", "success");
		}else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
		
	}
	
	@GetMapping("/menu_name/delete")
	@ResponseBody
	public Map<String, String> deleteMenu(
			@RequestParam(value="menuId", required=false) int menuId
			, HttpSession session
			){
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = menuBO.deleteMenu(userId, menuId);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(count == 1) {
			resultMap.put("result", "success");
		}else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
		
	}
 
}
