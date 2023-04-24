package com.petitdesert.page.map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/map")
public class MapController {

	@GetMapping("/map/view")
	public String mapController() {
		
		return "map/map";
		
	}
	
}
