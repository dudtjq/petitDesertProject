package com.petitdesert.page.class1.reservation.model;

import java.util.Date;

public class ReservationDetail {
	
	private int id;
	private int userId;
	private int lessonId;
	private String className;
	private String name;
	private Date reservationDay;
	private Date reservationTime;
	private String situation;
	
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
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	

	
	
	

}
