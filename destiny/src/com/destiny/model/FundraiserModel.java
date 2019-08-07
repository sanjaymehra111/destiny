package com.destiny.model;

public class FundraiserModel 
{
	String fundraisers_id;
	String category_type;
	String personal_name;
	String personal_email;
	String personal_password;
	String personal_number;
	String personal_city;
	String personal_pan_no;
	String personal_aadhar_no;
	String personal_dob;
	String personal_profile_image;

	
public FundraiserModel()
{
	
}
 


public String getFundraisers_id() {
	return fundraisers_id;
}



public void setFundraisers_id(String fundraisers_id) {
	this.fundraisers_id = fundraisers_id;
}



public String getCategory_type() {
	return category_type;
}



public void setCategory_type(String category_type) {
	this.category_type = category_type;
}



public String getPersonal_name() {
	return personal_name;
}



public void setPersonal_name(String personal_name) {
	this.personal_name = personal_name;
}



public String getPersonal_email() {
	return personal_email;
}



public void setPersonal_email(String personal_email) {
	this.personal_email = personal_email;
}



public String getPersonal_password() {
	return personal_password;
}



public void setPersonal_password(String personal_password) {
	this.personal_password = personal_password;
}



public String getPersonal_number() {
	return personal_number;
}



public void setPersonal_number(String personal_number) {
	this.personal_number = personal_number;
}



public String getPersonal_city() {
	return personal_city;
}



public void setPersonal_city(String personal_city) {
	this.personal_city = personal_city;
}



public String getPersonal_pan_no() {
	return personal_pan_no;
}



public void setPersonal_pan_no(String personal_pan_no) {
	this.personal_pan_no = personal_pan_no;
}



public String getPersonal_aadhar_no() {
	return personal_aadhar_no;
}



public void setPersonal_aadhar_no(String personal_aadhar_no) {
	this.personal_aadhar_no = personal_aadhar_no;
}



public String getPersonal_dob() {
	return personal_dob;
}



public void setPersonal_dob(String personal_dob) {
	this.personal_dob = personal_dob;
}




public String getPersonal_profile_image() {
	return personal_profile_image;
}



public void setPersonal_profile_image(String personal_profile_image) {
	this.personal_profile_image = personal_profile_image;
}




public FundraiserModel(String fundraisers_id, String category_type, String personal_name, String personal_email,
		String personal_password, String personal_number, String personal_city, String personal_pan_no,
		String personal_aadhar_no, String personal_dob, String personal_profile_image) {
	super();
	this.fundraisers_id = fundraisers_id;
	this.category_type = category_type;
	this.personal_name = personal_name;
	this.personal_email = personal_email;
	this.personal_password = personal_password;
	this.personal_number = personal_number;
	this.personal_city = personal_city;
	this.personal_pan_no = personal_pan_no;
	this.personal_aadhar_no = personal_aadhar_no;
	this.personal_dob = personal_dob;
	this.personal_profile_image = personal_profile_image;
}



@Override
public String toString() {
	StringBuilder builder = new StringBuilder();
	builder.append("FundraiserModel [fundraisers_id=").append(fundraisers_id).append(", category_type=")
			.append(category_type).append(", personal_name=").append(personal_name).append(", personal_email=")
			.append(personal_email).append(", personal_password=").append(personal_password)
			.append(", personal_number=").append(personal_number).append(", personal_city=").append(personal_city)
			.append(", personal_pan_no=").append(personal_pan_no).append(", personal_aadhar_no=")
			.append(personal_aadhar_no).append(", personal_dob=").append(personal_dob)
			.append(", personal_profile_image=").append(personal_profile_image).append("]");
	return builder.toString();
}



}