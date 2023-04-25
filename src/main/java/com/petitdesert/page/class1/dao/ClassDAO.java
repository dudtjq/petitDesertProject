package com.petitdesert.page.class1.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.petitdesert.page.class1.model.Lesson;

@Repository
public interface ClassDAO {

	public int insertClass(
			@Param("userId") int userId
			, @Param("className") String className
			, @Param("introduce") String introduce
			, @Param("price") String price
			, @Param("imagePath") String imagePath
			, @Param("category") String category
			);
	
	public List<Lesson> selectLessonList(@Param("category") String category);	
	
	public Lesson selectLessonByUserId(
			@Param("userId") int userId
			, @Param("id") int id);
	
	public int deleteLesson(@Param("id") int id);
	
}
