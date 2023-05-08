package com.petitdesert.page.class1.reservation;

import java.sql.Time;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.petitdesert.page.class1.reservation.bo.ReservationBO;

@RestController
@RequestMapping("/reservation")
public class ReservationRestController {
	
	@Autowired
	private ReservationBO reservationBO;
	
	
	@PostMapping("/class_reservation")
	@ResponseBody
	public Map<String, String> reservationResult(
			@RequestParam("lessonId") int lessonId
			, @DateTimeFormat(pattern = "yyyy-MM-dd")
			  @RequestParam("reservationDay") Date reservationDay
			, @DateTimeFormat(pattern = "HH:mm:ss")
			  @RequestParam("reservationtime") Time reservationtime
			, @RequestParam("situation") String situation
			, HttpSession session
			){
		
		int userId = (Integer)session.getAttribute("userId");
		
		Map<String, String> resultMap = new HashMap<>();
		
		int count = reservationBO.addReservation(userId, lessonId, reservationDay, reservationtime, situation);
		
		if(count == 1) {
			resultMap.put("result", "success");
		}else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
		
	}

}
