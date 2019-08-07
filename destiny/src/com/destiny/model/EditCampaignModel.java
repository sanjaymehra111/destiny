package com.destiny.model;

public class EditCampaignModel 
{
	String fundraisers_title;
	String goal_amount;
	String fundraisers_story;
	String fundraisers_name;
	String fundraisers_upi_image;
	String fundraisers_upi_id;

public EditCampaignModel(){}



public String getFundraisers_title() {
	return fundraisers_title;
}



public void setFundraisers_title(String fundraisers_title) {
	this.fundraisers_title = fundraisers_title;
}



public String getGoal_amount() {
	return goal_amount;
}



public void setGoal_amount(String goal_amount) {
	this.goal_amount = goal_amount;
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



public String getFundraisers_upi_image() {
	return fundraisers_upi_image;
}



public void setFundraisers_upi_image(String fundraisers_upi_image) {
	this.fundraisers_upi_image = fundraisers_upi_image;
}



public String getFundraisers_upi_id() {
	return fundraisers_upi_id;
}



public void setFundraisers_upi_id(String fundraisers_upi_id) {
	this.fundraisers_upi_id = fundraisers_upi_id;
}





public EditCampaignModel(String fundraisers_title, String goal_amount, String fundraisers_story,
		String fundraisers_name, String fundraisers_upi_image, String fundraisers_upi_id) {
	super();
	this.fundraisers_title = fundraisers_title;
	this.goal_amount = goal_amount;
	this.fundraisers_story = fundraisers_story;
	this.fundraisers_name = fundraisers_name;
	this.fundraisers_upi_image = fundraisers_upi_image;
	this.fundraisers_upi_id = fundraisers_upi_id;
}



@Override
public String toString() {
	StringBuilder builder = new StringBuilder();
	builder.append("EditCampaignModel [fundraisers_title=").append(fundraisers_title).append(", goal_amount=")
			.append(goal_amount).append(", fundraisers_story=").append(fundraisers_story).append(", fundraisers_name=")
			.append(fundraisers_name).append(", fundraisers_upi_image=").append(fundraisers_upi_image)
			.append(", fundraisers_upi_id=").append(fundraisers_upi_id).append("]");
	return builder.toString();
}



}


