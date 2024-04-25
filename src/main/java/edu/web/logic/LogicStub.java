package edu.web.logic;

import edu.web.bean.AuthInfo;
import edu.web.bean.User;
import edu.web.bean.UserRegInfo;

public class LogicStub {
	
	public User checkAuth(AuthInfo authInfo) {
		if("jokermc@mail.ru".equals(authInfo.getLogin()) && "111".equals(authInfo.getPassword())) {
			return new User("Joker", "admin");
		}
		return new User("Joker", "admin");
	}
	
	public User checkReg(UserRegInfo userRegInfo) {
		if("jokermc@mail.ru".equals(userRegInfo.getLogin()) && "111".equals(userRegInfo.getPassword())) {
			return new User();
		}
		return new User();
	}

}
