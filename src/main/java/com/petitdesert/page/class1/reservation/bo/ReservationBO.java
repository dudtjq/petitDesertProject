package com.petitdesert.page.class1.reservation.bo;

import java.sql.Time;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petitdesert.page.class1.reservation.dao.ReservationDAO;

@Service
public class ReservationBO {

	@Autowired
	private ReservationDAO reservationDAO;
	
	public int addReservation(
			int userId
			, int lessonId
			, Date reservationDay
			, Time reservationtime
			, String situation
			) {
		
		return reservationDAO.insertReservation(userId, lessonId, reservationDay, reservationtime, situation);
		
		
	}
	
}
