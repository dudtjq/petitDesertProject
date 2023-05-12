package com.petitdesert.page.class1.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.petitdesert.page.class1.dao.ClassDAO;
import com.petitdesert.page.class1.model.Lesson;
import com.petitdesert.page.common.FileManagerService;

@Service
public class ClassBO {
	
	@Autowired
	private ClassDAO classDAO;
	
	public int addClassUp(
			int userId
			, String className
			, String introduce
			, String price
			, MultipartFile file 
			, String category
			) {
		
		String imagePath = FileManagerService.saveFile(userId, file);
		
		return classDAO.insertClass(userId, className, introduce, price, imagePath, category);
		
		
	}
	
	public List<Lesson> getLessonList(String category){
		
		return classDAO.selectLessonList(category);
		
	}
	
	public int deleteByLesson(int userId, int lessonId) {
		
		Lesson lesson = classDAO.selectLessonByUserId(userId, lessonId);
		
		if(lesson != null) {
			// 이미지 파일
			FileManagerService.removeFile(lesson.getImagePath());
			
			return classDAO.deleteLesson(lessonId);
			
		}else {
			return 0;
		}
	
		
	}
	
	public Lesson getLessonById(int userId) {
		
		return classDAO.selectLessonById(userId);
		
	}

}
