package com.petitdesert.page.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.petitdesert.page.user.bo.UserBO;
import com.petitdesert.page.user.model.User;

@RestController
@RequestMapping("/user")
public class RestUserController {
	
	
	@Autowired
	private UserBO userBO;
	
	@PostMapping("/signup")
	@ResponseBody
	public Map<String, String> signup(
			@RequestParam("loginId") String loginId
			, @RequestParam("password") String password
			, @RequestParam("passwordCheck") String passwordCheck
			, @RequestParam("name") String name
			, @RequestParam("email") String email
			, @RequestParam("checkNumber") int checkNumber
			){
		
		int count = userBO.addUser(loginId, password, passwordCheck, name, email, checkNumber);
		
		Map<String, String> resultMap = new HashMap<>();
		
		if(count == 1) {
			resultMap.put("result", "success");
		}else {
			resultMap.put("result", "fail");
		}
		
		return resultMap;
		
	}
	
	@PostMapping("/signin")
	@ResponseBody
	public Map<String, String> signin(
			@RequestParam("loginId") String loginId
			, @RequestParam("password") String password
			, HttpSession session
			){
		
		User user = userBO.getUser(loginId, password);
		
		
		
	}
	
	
	@GetMapping("/duplicate_id")
	@ResponseBody
	public Map<String, Boolean> isDuplicateLoginId(
			@RequestParam("loginId") String loginId
			){
		
		boolean isDuplicate = userBO.isDuplicateLoginId(loginId);
		
		Map<String, Boolean> resultMap = new HashMap<>();
		
		if(isDuplicate) {
			// 중복
			resultMap.put("duplicate_id", true);
		}else {
			// 중복 아님
			resultMap.put("duplicate_id", false);
		}
		
		return resultMap;
	}
	

}
