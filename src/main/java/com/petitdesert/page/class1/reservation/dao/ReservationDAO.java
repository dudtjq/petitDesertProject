package com.petitdesert.page.class1.reservation.dao;

import java.sql.Time;
import java.util.Date;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ReservationDAO {
	
	public int insertReservation(
			@Param("userId") int userId
			, @Param("lessonId") int lessonId
			, @Param("reservationDay") Date reservationDay
			, @Param("reservationTime") Time reservationTime
			, @Param("situation") String situation
			);

}
