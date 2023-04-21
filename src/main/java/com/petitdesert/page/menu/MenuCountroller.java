package com.petitdesert.page.menu;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.petitdesert.page.menu.bo.MenuBO;
import com.petitdesert.page.menu.model.Menu;

@Controller
@RequestMapping("/menu")
public class MenuCountroller {
	
	@Autowired
	private MenuBO menuBO;
	
	@GetMapping("/menu_name_coffee/view")
	public String managerMenuCoffee() {
		
		return "menu/managerMenuCoffee";
		
		
	}
	
	
	
	// 관리자가 메뉴를 등록(input) 하는 페이지
	@GetMapping("/menu_name_up/view")
	public String managerMenuUpCoffee(
			@RequestParam("category") String category
			, Model model
			, HttpSession session
			) {
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<Menu> menuList = menuBO.getMenuList(userId, category);
			
		model.addAttribute("menuList", menuList);
		
		return "menu/managerMenuUp";
		
		
	}
	
	

}
