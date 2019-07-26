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
	String fundraisers_beneficiary_relaion;
	String fundraisers_story;

	
	public class CampaignModel
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



	public String getFundraisers_beneficiary_relaion() {
		return fundraisers_beneficiary_relaion;
	}



	public void setFundraisers_beneficiary_relaion(String fundraisers_beneficiary_relaion) {
		this.fundraisers_beneficiary_relaion = fundraisers_beneficiary_relaion;
	}



	public String getFundraisers_story() {
		return fundraisers_story;
	}



	public void setFundraisers_story(String fundraisers_story) {
		this.fundraisers_story = fundraisers_story;
	}



	public CampaignsModel(String campaign_id, String fundraisers_id, String fundraisers_title,
			String fundraisers_goal_amount, String fundraisers_name, String fundraisers_contact,
			String fundraisers_email, String fundraisers_beneficiary_relaion, String fundraisers_story) {
		super();
		this.campaign_id = campaign_id;
		this.fundraisers_id = fundraisers_id;
		this.fundraisers_title = fundraisers_title;
		this.fundraisers_goal_amount = fundraisers_goal_amount;
		this.fundraisers_name = fundraisers_name;
		this.fundraisers_contact = fundraisers_contact;
		this.fundraisers_email = fundraisers_email;
		this.fundraisers_beneficiary_relaion = fundraisers_beneficiary_relaion;
		this.fundraisers_story = fundraisers_story;
	}



	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CampaignsModel [campaign_id=").append(campaign_id).append(", fundraisers_id=")
				.append(fundraisers_id).append(", fundraisers_title=").append(fundraisers_title)
				.append(", fundraisers_goal_amount=").append(fundraisers_goal_amount).append(", fundraisers_name=")
				.append(fundraisers_name).append(", fundraisers_contact=").append(fundraisers_contact)
				.append(", fundraisers_email=").append(fundraisers_email).append(", fundraisers_beneficiary_relaion=")
				.append(fundraisers_beneficiary_relaion).append(", fundraisers_story=").append(fundraisers_story)
				.append("]");
		return builder.toString();
	}

	
	
}
