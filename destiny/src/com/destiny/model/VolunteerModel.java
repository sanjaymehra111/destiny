package com.destiny.model;

public class VolunteerModel 
{
	String volunteer_id;
	String volunteer_name;
	String volunteer_contact;
	String volunteer_email;
	String volunteer_message;
	String volunteer_status;
	String volunteer_joining_date;
	
	
	public VolunteerModel(){}


	public String getVolunteer_id() {
		return volunteer_id;
	}


	public void setVolunteer_id(String volunteer_id) {
		this.volunteer_id = volunteer_id;
	}


	public String getVolunteer_name() {
		return volunteer_name;
	}


	public void setVolunteer_name(String volunteer_name) {
		this.volunteer_name = volunteer_name;
	}


	public String getVolunteer_contact() {
		return volunteer_contact;
	}


	public void setVolunteer_contact(String volunteer_contact) {
		this.volunteer_contact = volunteer_contact;
	}


	public String getVolunteer_email() {
		return volunteer_email;
	}


	public void setVolunteer_email(String volunteer_email) {
		this.volunteer_email = volunteer_email;
	}


	public String getVolunteer_message() {
		return volunteer_message;
	}


	public void setVolunteer_message(String volunteer_message) {
		this.volunteer_message = volunteer_message;
	}

	
	

	public String getVolunteer_status() {
		return volunteer_status;
	}


	public void setVolunteer_status(String volunteer_status) {
		this.volunteer_status = volunteer_status;
	}

	
	

	public String getVolunteer_joining_date() {
		return volunteer_joining_date;
	}


	public void setVolunteer_joining_date(String volunteer_joining_date) {
		this.volunteer_joining_date = volunteer_joining_date;
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("VolunteerModel [volunteer_id=").append(volunteer_id).append(", volunteer_name=")
				.append(volunteer_name).append(", volunteer_contact=").append(volunteer_contact)
				.append(", volunteer_email=").append(volunteer_email).append(", volunteer_message=")
				.append(volunteer_message).append(", volunteer_status=").append(volunteer_status)
				.append(", volunteer_joining_date=").append(volunteer_joining_date).append("]");
		return builder.toString();
	}


	public VolunteerModel(String volunteer_id, String volunteer_name, String volunteer_contact, String volunteer_email,
			String volunteer_message, String volunteer_status, String volunteer_joining_date) {
		super();
		this.volunteer_id = volunteer_id;
		this.volunteer_name = volunteer_name;
		this.volunteer_contact = volunteer_contact;
		this.volunteer_email = volunteer_email;
		this.volunteer_message = volunteer_message;
		this.volunteer_status = volunteer_status;
		this.volunteer_joining_date = volunteer_joining_date;
	}


	
	
	
	
	
	
	
	
}
