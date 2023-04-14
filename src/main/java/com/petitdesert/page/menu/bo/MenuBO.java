package com.petitdesert.page.menu.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.petitdesert.page.common.FileManagerService;
import com.petitdesert.page.menu.dao.MenuDAO;

@Service
public class MenuBO {
	
	@Autowired
	private MenuDAO menuDAO;
	
	public int addMenu(
			int userId
			, String menuName
			, int price
			, String introduce
			, MultipartFile file
			, String category
			) {
		
		String imagePath = FileManagerService.saveFile(userId, file);
		
		return menuDAO.insertMenu(userId, menuName, price, introduce, imagePath, category);
		
	}

}
