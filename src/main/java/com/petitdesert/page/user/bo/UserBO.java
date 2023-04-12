package com.petitdesert.page.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petitdesert.page.common.EncryptService;
import com.petitdesert.page.user.dao.UserDAO;
import com.petitdesert.page.user.model.User;

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
		
		// 비밀번호 암호화
		String encryptPassword = EncryptService.md5(password);

		return userDAO.insertUser(loginId, encryptPassword, passwordCheck, name, email, checkNumber);
		
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
	
	public User getUser(String loginId, String password) {
		
		String encryptPassword = EncryptService.md5(password);
		
		return userDAO.selectUser(loginId, encryptPassword);
		
	}
	
}
