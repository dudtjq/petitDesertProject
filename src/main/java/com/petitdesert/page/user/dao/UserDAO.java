package com.petitdesert.page.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.petitdesert.page.user.model.User;

@Repository
public interface UserDAO {
	
	public int insertUser(
			@Param("loginId") String loginId
			, @Param("password") String password
			, @Param("passwordCheck") String passwordCheck
			, @Param("name") String name
			, @Param("email") String email
			, @Param("checkNumber") int checkNumber
			);
	
	public int selectCountLoginId(@Param("loginId") String loginId);
	
	public User selectUser(
			@Param("loginId") String loginId
			, @Param("password") String password
			);
	
		


}
