package com.petitdesert.page.menu;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@GetMapping("/menu_name_bakery/view")
	public String managerMenuBakery() {
		
		return "menu/managerMenuBakery";
		
		
	}
	
	@GetMapping("/menu_name_desert/view")
	public String managerMenuDesert() {
		
		return "menu/managerMenuDesert";
		
		
	}
	
	@GetMapping("/menu_name_sandwich/view")
	public String managerMenuSandwich() {
		
		return "menu/managerMenuSandwich";
		
		
	}
	
	// 관리자가 메뉴를 등록(input) 하는 페이지
	@GetMapping("/menu_name_coffee_up/view")
	public String managerMenuUpCoffee(
			Model model
			, HttpSession session
			) {
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<Menu> menuList = menuBO.getMenuList(userId);
		
		model.addAttribute("menuList", menuList);
		
		return "menu/managerMenuUpCoffee";
		
		
	}

}
