package com.petitdesert.page.class1.reservation.model;


import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Reservation {

	private int id;
	private int userId;
	private int lessonId;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date reservationDay;
	@DateTimeFormat(pattern = "HH:mm:ss")
	private Date reservationTime;
	private String situation;
	private Date createdAt;
	private Date updatedAt;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getLessonId() {
		return lessonId;
	}
	public void setLessonId(int lessonId) {
		this.lessonId = lessonId;
	}
	public Date getReservationDay() {
		return reservationDay;
	}
	public void setReservationDay(Date reservationDay) {
		this.reservationDay = reservationDay;
	}
	public Date getReservationTime() {
		return reservationTime;
	}
	public void setReservationTime(Date reservationTime) {
		this.reservationTime = reservationTime;
	}
	public String getSituation() {
		return situation;
	}
	public void setSituation(String situation) {
		this.situation = situation;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	

	
	
	
}
