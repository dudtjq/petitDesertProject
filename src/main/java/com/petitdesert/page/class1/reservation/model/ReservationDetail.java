package com.petitdesert.page.class1.reservation.model;

import java.sql.Time;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ReservationDetail {
	
	private int id;
	private int userId;
	private int lessonId;
	private String className;
	private String imagePath;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date reservationDate;
	@DateTimeFormat(pattern = "HH-mm-ss")
	private Time reservationTime;
	
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
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
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
	
	
	

}
