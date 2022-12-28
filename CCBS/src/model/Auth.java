package model;

public class Auth {
	/**
	 * 
	 */
	private String userName, password;
	public boolean match;
	
	public Auth() {}
	
	public String getUserName() {
		return this.userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getPassword() {
		return this.password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean match() {
		if((this.userName.equals("admin")) && (this.password.equals("admin"))) {
			return match = true;
		}
		else if((this.userName == "user") && (password == "user")) {
			return match = true;
		}
		else if((this.userName == "company") && (password == "company")) {
			return match = true;
		}
		else {
			return match = false;
		}
	}
}
