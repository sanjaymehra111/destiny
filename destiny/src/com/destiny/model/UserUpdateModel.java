package com.destiny.model;

public class UserUpdateModel 
{
	String fundraisers_id;
	String personal_aadhar_no;
	String personal_pan_no;
	String personal_dob;
	String personal_name;
	String personal_city;
	
	
	
	public String getFundraisers_id() {
		return fundraisers_id;
	}

	public void setFundraisers_id(String fundraisers_id) {
		this.fundraisers_id = fundraisers_id;
	}

	public String getPersonal_aadhar_no() {
		return personal_aadhar_no;
	}

	public void setPersonal_aadhar_no(String personal_aadhar_no) {
		this.personal_aadhar_no = personal_aadhar_no;
	}

	public String getPersonal_pan_no() {
		return personal_pan_no;
	}

	public void setPersonal_pan_no(String personal_pan_no) {
		this.personal_pan_no = personal_pan_no;
	}

	public String getPersonal_dob() {
		return personal_dob;
	}

	public void setPersonal_dob(String personal_dob) {
		this.personal_dob = personal_dob;
	}

	public String getPersonal_name() {
		return personal_name;
	}

	public void setPersonal_name(String personal_name) {
		this.personal_name = personal_name;
	}

	public String getPersonal_city() {
		return personal_city;
	}

	public void setPersonal_city(String personal_city) {
		this.personal_city = personal_city;
	}

	public UserUpdateModel(String fundraisers_id, String personal_aadhar_no, String personal_pan_no,
			String personal_dob, String personal_name, String personal_city) {
		super();
		this.fundraisers_id = fundraisers_id;
		this.personal_aadhar_no = personal_aadhar_no;
		this.personal_pan_no = personal_pan_no;
		this.personal_dob = personal_dob;
		this.personal_name = personal_name;
		this.personal_city = personal_city;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("UserUpdateModel [fundraisers_id=").append(fundraisers_id).append(", personal_aadhar_no=")
				.append(personal_aadhar_no).append(", personal_pan_no=").append(personal_pan_no)
				.append(", personal_dob=").append(personal_dob).append(", personal_name=").append(personal_name)
				.append(", personal_city=").append(personal_city).append("]");
		return builder.toString();
	}

	
	
	
	
}