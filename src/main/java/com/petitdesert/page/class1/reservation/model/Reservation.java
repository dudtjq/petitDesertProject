package com.petitdesert.page.class1.reservation.model;

import java.sql.Time;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Reservation {

	private int id;
	private int userId;
	private int lessonId;
	
	private Date reservationDate;
	
	private Time reservationTime;
	private String situation;
	private Date createdAt;
	private Date updatedAt;
	
	public String getSituation() {
		return situation;
	}
	public void setSituation(String situation) {
		this.situation = situation;
	}
	
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
	public Date getReservationDate() {
		return reservationDate;
	}
	public void setReservationDate(Date reservationDate) {
		this.reservationDate = reservationDate;
	}
	public Time getReservationTime() {
		return reservationTime;
	}
	public void setReservationTime(Time reservationTime) {
		this.reservationTime = reservationTime;
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
