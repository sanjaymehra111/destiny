package com.destiny.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class EditCampaignModel 
{
	String campaign_id;
	String fundraisers_id;
	String fundraisers_title;
	String fundraisers_goal_amount;
	String fundraisers_story;
	String fundraisers_name;
	String fundraisers_contact;
	String fundraisers_email;
	String fundraisers_profile_image;
	String fundraisers_upi_image;
	String fundraisers_upi_number;

public EditCampaignModel(){}





public String getCampaign_id() {
	return campaign_id;
}



public void setCampaign_id(String campaign_id) {
	this.campaign_id = campaign_id;
}



public String getFundraisers_id() {
	return fundraisers_id;
}



public void setFundraisers_id(String fundraisers_id) {
	this.fundraisers_id = fundraisers_id;
}



public String getFundraisers_title() {
	return fundraisers_title;
}



public void setFundraisers_title(String fundraisers_title) {
	this.fundraisers_title = fundraisers_title;
}



public String getFundraisers_goal_amount() {
	return fundraisers_goal_amount;
}



public void setFundraisers_goal_amount(String fundraisers_goal_amount) {
	this.fundraisers_goal_amount = fundraisers_goal_amount;
}



public String getFundraisers_story() {
	return fundraisers_story;
}



public void setFundraisers_story(String fundraisers_story) {
	this.fundraisers_story = fundraisers_story;
}



public String getFundraisers_name() {
	return fundraisers_name;
}



public void setFundraisers_name(String fundraisers_name) {
	this.fundraisers_name = fundraisers_name;
}



public String getFundraisers_contact() {
	return fundraisers_contact;
}



public void setFundraisers_contact(String fundraisers_contact) {
	this.fundraisers_contact = fundraisers_contact;
}



public String getFundraisers_email() {
	return fundraisers_email;
}



public void setFundraisers_email(String fundraisers_email) {
	this.fundraisers_email = fundraisers_email;
}



public String getFundraisers_profile_image() {
	return fundraisers_profile_image;
}



public void setFundraisers_profile_image(String fundraisers_profile_image) {
	this.fundraisers_profile_image = fundraisers_profile_image;
}



public String getFundraisers_upi_image() {
	return fundraisers_upi_image;
}



public void setFundraisers_upi_image(String fundraisers_upi_image) {
	this.fundraisers_upi_image = fundraisers_upi_image;
}



public String getFundraisers_upi_number() {
	return fundraisers_upi_number;
}



public void setFundraisers_upi_number(String fundraisers_upi_number) {
	this.fundraisers_upi_number = fundraisers_upi_number;
}



@Override
public String toString() {
	StringBuilder builder = new StringBuilder();
	builder.append("EditCampaignModel [campaign_id=").append(campaign_id).append(", fundraisers_id=")
			.append(fundraisers_id).append(", fundraisers_title=").append(fundraisers_title)
			.append(", fundraisers_goal_amount=").append(fundraisers_goal_amount).append(", fundraisers_story=")
			.append(fundraisers_story).append(", fundraisers_name=").append(fundraisers_name)
			.append(", fundraisers_contact=").append(fundraisers_contact).append(", fundraisers_email=")
			.append(fundraisers_email).append(", fundraisers_profile_image=").append(fundraisers_profile_image)
			.append(", fundraisers_upi_image=").append(fundraisers_upi_image).append(", fundraisers_upi_number=")
			.append(fundraisers_upi_number).append("]");
	return builder.toString();
}



public EditCampaignModel(String campaign_id, String fundraisers_id, String fundraisers_title,
		String fundraisers_goal_amount, String fundraisers_story, String fundraisers_name, String fundraisers_contact,
		String fundraisers_email, String fundraisers_profile_image, String fundraisers_upi_image,
		String fundraisers_upi_number) {
	super();
	this.campaign_id = campaign_id;
	this.fundraisers_id = fundraisers_id;
	this.fundraisers_title = fundraisers_title;
	this.fundraisers_goal_amount = fundraisers_goal_amount;
	this.fundraisers_story = fundraisers_story;
	this.fundraisers_name = fundraisers_name;
	this.fundraisers_contact = fundraisers_contact;
	this.fundraisers_email = fundraisers_email;
	this.fundraisers_profile_image = fundraisers_profile_image;
	this.fundraisers_upi_image = fundraisers_upi_image;
	this.fundraisers_upi_number = fundraisers_upi_number;
}



}