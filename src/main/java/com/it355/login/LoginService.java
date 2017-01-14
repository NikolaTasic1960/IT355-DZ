package com.it355.login;

import org.springframework.stereotype.Service;

import com.it355.login.LoginBean;

@Service
public class LoginService {
	public String validateUser(LoginBean loginBean)	{
		String userName = loginBean.getUserName();
		String password = loginBean.getPassword();
		if(userName.equals("username") && password.equals("password")) return "true";
		else return "false";
	}	
}
