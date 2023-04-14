package com.petitdesert.page.menu;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
			@RequestParam("menuName") String menuName
			, @RequestParam("price") int price
			, @RequestParam("introduce") String introduce
			, @RequestParam("file") MultipartFile file
			, @RequestParam("category") String category
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
 
}
