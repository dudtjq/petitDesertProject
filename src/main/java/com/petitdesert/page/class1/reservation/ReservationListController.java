package com.petitdesert.page.class1.reservation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reservation")
public class ReservationListController {
	
	@GetMapping("/class_list/view")
	public String reservationView() {
		
		return "class/reservationList";
	}

}
