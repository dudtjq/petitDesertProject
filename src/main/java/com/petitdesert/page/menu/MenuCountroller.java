package com.petitdesert.page.menu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/menu")
public class MenuCountroller {
	
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
	
	@GetMapping("/menu_name_coffee_up/view")
	public String managerMenuUpCoffee() {
		
		return "menu/managerMenuUpCoffee";
		
		
	}

}
