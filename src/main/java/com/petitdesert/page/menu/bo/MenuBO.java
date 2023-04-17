package com.petitdesert.page.menu.bo;

import java.util.ArrayList;
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
	
	public List<Menu> getMenuList(int userId){

		List<Menu> menuList = menuDAO.selectMenuList();
		
		List<Menu> essentialMenu = new ArrayList<>();
		
		for(Menu menu:menuList) {
			
			Menu addMenu = new Menu();
			
			addMenu.setId(menu.getId());
			addMenu.setUserId(menu.getUserId());
			addMenu.setMenuName(menu.getMenuName());
			addMenu.setPrice(menu.getPrice());
			addMenu.setIntroduce(menu.getIntroduce());
			addMenu.setImagePath(menu.getImagePath());
			addMenu.setCategory(menu.getCategory());
			
			essentialMenu.add(addMenu);
			
		}
		
		return essentialMenu;
		
	}

}
