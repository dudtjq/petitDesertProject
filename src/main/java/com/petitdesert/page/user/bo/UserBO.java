package com.petitdesert.page.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petitdesert.page.user.dao.UserDAO;

@Service
public class UserBO {

	@Autowired
	private UserDAO userDAO;
	
	public int addUser(
			String loginId
			, String password
			, String passwordCheck
			, String name
			, String email
			, int checkNumber
			) {
		
		return userDAO.insertUser(loginId, password, passwordCheck, name, email, checkNumber);
		
	}
	
	public boolean isDuplicateLoginId(String loginId) {
		
		int count = userDAO.selectCountLoginId(loginId);
		
		if(count == 0) {
			// 중복이 아님
			return false;
		}else {
			// 중복
			return true;
		}
		
	}
	
}
