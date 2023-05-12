package com.petitdesert.page.class1.reservation.bo;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petitdesert.page.class1.bo.ClassBO;
import com.petitdesert.page.class1.model.Lesson;
import com.petitdesert.page.class1.reservation.dao.ReservationDAO;
import com.petitdesert.page.class1.reservation.model.Reservation;
import com.petitdesert.page.class1.reservation.model.ReservationDetail;
import com.petitdesert.page.user.bo.UserBO;
import com.petitdesert.page.user.model.User;


@Service
public class ReservationBO {

	@Autowired
	private ReservationDAO reservationDAO;
	
	@Autowired
	private UserBO userBO;
	
	@Autowired
	private ClassBO classBO;
	
	public int addReservation(
			int userId
			, int lessonId
			, Date reservationDay
			, Date reservationtime
			) {
		
		return reservationDAO.insertReservation(userId, lessonId, reservationDay, reservationtime, "대기중");
	
	}
	
	public List<ReservationDetail> getReservationList(int userId){
		
		List<Reservation> reservationList = reservationDAO.selectReservation();
		
		List<ReservationDetail> reservationDetailList = new ArrayList<>();		
		
		for(Reservation reservation:reservationList) {
			
			User user = userBO.getUserById(reservation.getUserId());
			Lesson lesson = classBO.getLessonById(reservation.getLessonId());
			
			ReservationDetail reservationDetail = new ReservationDetail();
			
			reservationDetail.setId(reservation.getId());
			reservationDetail.setReservationDay(reservation.getReservationDay());
			reservationDetail.setReservationTime(reservation.getReservationTime());
			reservationDetail.setSituation(reservation.getSituation());
			reservationDetail.setClassName(lesson.getClassName());
			reservationDetail.setName(user.getName());
			
			reservationDetailList.add(reservationDetail);
		}
		
		return reservationDetailList;
		
	}
	
	public int deleteReservation(int id) {
		
	 	return reservationDAO.deleteReservation(id);
		
	}
	
	
	
}
