package com.destiny.model;

public class CampaignsModel 
{	
	String campaign_id;
	String fundraisers_id;
	String fundraisers_title;
	String fundraisers_goal_amount;
	String fundraisers_name;
	String fundraisers_contact;
	String fundraisers_email;
	String fundraisers_beneficiary_relation;
	String fundraisers_story;
	String fundraisers_start_date;
	String fundraisers_end_date;
	String fundraisers_created_date;
	String fundraisers_status;
	

	
	public CampaignsModel()
	{
		
	}

	
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



	public String getFundraisers_beneficiary_relation() {
		return fundraisers_beneficiary_relation;
	}



	public void setFundraisers_beneficiary_relation(String fundraisers_beneficiary_relation) {
		this.fundraisers_beneficiary_relation = fundraisers_beneficiary_relation;
	}
  


	public String getFundraisers_story() {
		return fundraisers_story;
	}



	public void setFundraisers_story(String fundraisers_story) {
		this.fundraisers_story = fundraisers_story;
	}


	public String getfundraisers_start_date() {
		return fundraisers_start_date;
	}


	public void setfundraisers_start_date(String fundraisers_start_date) {
		this.fundraisers_start_date = fundraisers_start_date;
	}

	

	public String getFundraisers_start_date() {
		return fundraisers_start_date;
	}


	public void setFundraisers_start_date(String fundraisers_start_date) {
		this.fundraisers_start_date = fundraisers_start_date;
	}


	public String getFundraisers_end_date() {
		return fundraisers_end_date;
	}


	public void setFundraisers_end_date(String fundraisers_end_date) {
		this.fundraisers_end_date = fundraisers_end_date;
	}

	

	public String getFundraisers_created_date() {
		return fundraisers_created_date;
	}


	public void setFundraisers_created_date(String fundraisers_created_date) {
		this.fundraisers_created_date = fundraisers_created_date;
	}


	public String getFundraisers_status() {
		return fundraisers_status;
	}


	public void setFundraisers_status(String fundraisers_status) {
		this.fundraisers_status = fundraisers_status;
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CampaignsModel [campaign_id=").append(campaign_id).append(", fundraisers_id=")
				.append(fundraisers_id).append(", fundraisers_title=").append(fundraisers_title)
				.append(", fundraisers_goal_amount=").append(fundraisers_goal_amount).append(", fundraisers_name=")
				.append(fundraisers_name).append(", fundraisers_contact=").append(fundraisers_contact)
				.append(", fundraisers_email=").append(fundraisers_email).append(", fundraisers_beneficiary_relation=")
				.append(fundraisers_beneficiary_relation).append(", fundraisers_story=").append(fundraisers_story)
				.append(", fundraisers_start_date=").append(fundraisers_start_date).append(", fundraisers_end_date=")
				.append(fundraisers_end_date).append(", fundraisers_created_date=").append(fundraisers_created_date)
				.append(", fundraisers_status=").append(fundraisers_status).append("]");
		return builder.toString();
	}


	public CampaignsModel(String campaign_id, String fundraisers_id, String fundraisers_title,
			String fundraisers_goal_amount, String fundraisers_name, String fundraisers_contact,
			String fundraisers_email, String fundraisers_beneficiary_relation, String fundraisers_story,
			String fundraisers_start_date, String fundraisers_end_date, String fundraisers_created_date,
			String fundraisers_status) {
		super();
		this.campaign_id = campaign_id;
		this.fundraisers_id = fundraisers_id;
		this.fundraisers_title = fundraisers_title;
		this.fundraisers_goal_amount = fundraisers_goal_amount;
		this.fundraisers_name = fundraisers_name;
		this.fundraisers_contact = fundraisers_contact;
		this.fundraisers_email = fundraisers_email;
		this.fundraisers_beneficiary_relation = fundraisers_beneficiary_relation;
		this.fundraisers_story = fundraisers_story;
		this.fundraisers_start_date = fundraisers_start_date;
		this.fundraisers_end_date = fundraisers_end_date;
		this.fundraisers_created_date = fundraisers_created_date;
		this.fundraisers_status = fundraisers_status;
	}

	
	
	
	
}
