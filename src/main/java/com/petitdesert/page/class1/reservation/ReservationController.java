package com.petitdesert.page.class1.reservation;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
@RequestMapping("/reservation")
public class ReservationController {
	

	@GetMapping("/class_reservation/view")
	public String reservationView(
			// 이 파라미터에 있는 값으로 바로 jsp 파일쪽으로 값을 적용 할 수 있음
			// bo, dao 가 필요가 없다!!!
			@RequestParam(value="lessonId", required=false) int lessonId
			, Model model
			, HttpSession session
			) {
	
		return "class/reservation";
	}

}
