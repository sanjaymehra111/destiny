package com.destiny.model;

public class UserLoginModel 
{
	String user_id;
	String user_password;
	String fundraisers_id;
	
	public UserLoginModel(String user_id, String user_password, String fundraisers_id) {
		super();
		this.user_id = user_id;
		this.user_password = user_password;
		this.fundraisers_id= fundraisers_id;
		
	}

	public UserLoginModel() {
		// TODO Auto-generated constructor stub
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	
	public String getfundraisers_id() {
		return fundraisers_id;
	}

	public void setfundraisers_id(String fundraisers_id) {
		this.fundraisers_id = fundraisers_id;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("UserLoginModel [user_id=").append(user_id).append(", user_password=").append(user_password)
				.append(", fundraisers_id=").append(fundraisers_id).append("]");
		return builder.toString();
	}

	
	

}
