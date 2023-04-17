package com.petitdesert.page.menu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.petitdesert.page.menu.model.Menu;

@Repository
public interface MenuDAO {
	
	public int insertMenu(
			@Param("userId") int userId
			, @Param("menuName") String menuName
			, @Param("price") String price
			, @Param("introduce") String introduce
			, @Param("imagePath") String imagePath
			, @Param("category") String category
			);
	
	public List<Menu> selectMenuList();
 
}
