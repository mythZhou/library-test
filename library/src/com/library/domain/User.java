package com.library.domain;

public class User {
	private String username;
	private String password;
	public User() {
		
	}
	
	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return " ”√ªß√˚£∫" + username + ", √‹¬Î£∫" + password ;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((username == null) ? 0 : username.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if(this==obj) {
			return true;
		}
		if(obj==null) {
			return false;
		}
		if(getClass()!=obj.getClass()) {
			return false;
		}
		User user=(User) obj;
		if(user.getUsername()==null) {
			return false;
		}
		if(user.getPassword()==null) {
			return false;
		}
		if(username==null) {
			if(user.getUsername()!=null) {
				return false;
			}
		}else if(!username.equals(user.getUsername())) {
			return false;
		}
		if(password==null) {
			if(user.getPassword()!=null) {
				return false;
			}
		}else if(!password.equals(user.getPassword())) {
			return false;
		}
		return true;
	}
	
}
