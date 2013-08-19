package org.gymadviser.service;

import java.util.HashMap;

import org.gymAdviser.dto.User;


public class LoginService {



	HashMap<String, String> users = new HashMap<String, String>();

	public LoginService() {
		users.put("dshevchyk", "Dima Shevchyk");
		users.put("dimahum", "Dima Hum");
		users.put("mih403", "Misha Fartuh");
	}

	public boolean authentificate(String userId, String password) {
		if (password == null || password == "" || password.trim() == "") {
			return false;
		}
		return true;
	}

	public User getUserDetales(String userId) {
		User user = new User();
		System.out.print(userId);
		
		user.setUserName(users.get(userId));

		System.out.print(user.getUserName());
		user.setUserId(userId);
		return user;
	}
}
