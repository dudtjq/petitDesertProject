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
	

	// 관리자가 메뉴를 등록(input) 하는 페이지
	@GetMapping("/menu_name_up/view")
	public String managerMenuUpCoffee(
			@RequestParam(value="category", required=false) String category
			, Model model
			, HttpSession session
			) {
		
		
		List<Menu> menuList = menuBO.getMenuList(category);
			
		model.addAttribute("menuList", menuList);
		
		return "menu/managerMenuUp";
		
		
	}
	
	

}
