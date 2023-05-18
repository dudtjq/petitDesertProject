package com.petitdesert.page.class1.reservation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petitdesert.page.class1.reservation.bo.ReservationBO;
import com.petitdesert.page.class1.reservation.model.ReservationDetail;

@Controller
@RequestMapping("/reservation")
public class ReservationListController {
	
	@Autowired
	private ReservationBO reservationBO;
	
	@GetMapping("/class_list/view")
	public String reservationView(Model model
			, HttpSession session) {
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<ReservationDetail> reservationList = reservationBO.getReservationList(userId);
		
		model.addAttribute("reservationList", reservationList);
		
		
		
		return "class/reservationList";
	}

}
