package com.petitdesert.page.menu.bo;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.petitdesert.page.common.FileManagerService;
import com.petitdesert.page.menu.dao.MenuDAO;
import com.petitdesert.page.menu.model.Menu;

@Service
public class MenuBO {
	
	@Autowired
	private MenuDAO menuDAO;
	
	public int addMenu(
			int userId
			, String menuName
			, String price
			, String introduce
			, MultipartFile file
			, String category
			) {
		
		String imagePath = FileManagerService.saveFile(userId, file);
		
		return menuDAO.insertMenu(userId, menuName, price, introduce, imagePath, category);
		
	}
	
	public List<Menu> getMenuList(String category){

 	return menuDAO.selectMenuList(category);
	
	}
	
	
	
	public int deleteMenu(int userId, int menuId) {
		
		Menu menu = menuDAO.selectMenuByUserId(userId ,menuId);
		
		if(menu != null) {
			// 이미지 파일
			FileManagerService.removeFile(menu.getImagePath());
			
			return menuDAO.deleteMenu(menuId);
			
		}else {
			return 0;
		}
	
		
	}
	
	

}
