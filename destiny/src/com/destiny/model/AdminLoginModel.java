package com.destiny.model;

public class AdminLoginModel 
{
	String a_id;
	String admin_id;
	String admin_password;
	
	public AdminLoginModel(String a_id, String admin_id, String admin_password) {
		super();
		this.a_id = a_id;
		this.admin_id = admin_id;
		this.admin_password = admin_password;
	}

	public AdminLoginModel() {
		// TODO Auto-generated constructor stub
	}

	public String getA_id() {
		return a_id;
	}

	public void setA_id(String a_id) {
		this.a_id = a_id;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getAdmin_password() {
		return admin_password;
	}

	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("AdminLoginModel [a_id=").append(a_id).append(", admin_id=").append(admin_id)
				.append(", admin_password=").append(admin_password).append("]");
		return builder.toString();
	}

	
	
	
}
