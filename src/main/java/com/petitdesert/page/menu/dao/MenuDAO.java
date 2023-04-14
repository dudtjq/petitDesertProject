package com.petitdesert.page.menu.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface MenuDAO {
	
	public int insertMenu(
			@Param("userId") int userId
			, @Param("menuName") String menuName
			, @Param("price") int price
			, @Param("introduce") String introduce
			, @Param("imagePath") String imagePath
			, @Param("category") String category
			);

}
