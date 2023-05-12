package com.petitdesert.page.class1.reservation.dao;


import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.petitdesert.page.class1.reservation.model.Reservation;



@Repository
public interface ReservationDAO {
	
	public int insertReservation(
			@Param("userId") int userId
			, @Param("lessonId") int lessonId
			, @Param("reservationDay") Date reservationDay
			, @Param("reservationTime") Date reservationTime
			, @Param("situation") String situation
			);
	
	public List<Reservation> selectReservation();
	
	public int deleteReservation(@Param("id") int id);
		 

}
