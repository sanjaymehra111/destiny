package com.destiny.model;

public class DonationModel 
{
	String donor_id;
	String amount_type;
	String amount;
	String campaign_id;
	String donor_name; 
	String donor_contact;
	String donor_email;
	String donor_address;
	String donor_city;
	String donor_country;
	String donor_message;

	
	public DonationModel()
	{
		
	}
	
	public DonationModel(String donor_id, String amount_type, String amount, String campaign_id, String donor_name,
			String donor_contact, String donor_email, String donor_address, String donor_city, String donor_country,
			String donor_message) {
		super();
		this.donor_id = donor_id;
		this.amount_type = amount_type;
		this.amount = amount;
		this.campaign_id = campaign_id;
		this.donor_name = donor_name;
		this.donor_contact = donor_contact;
		this.donor_email = donor_email;
		this.donor_address = donor_address;
		this.donor_city = donor_city;
		this.donor_country = donor_country;
		this.donor_message = donor_message;
	}


	public String getDonor_id() {
		return donor_id;
	}


	public void setDonor_id(String donor_id) {
		this.donor_id = donor_id;
	}


	public String getAmount_type() {
		return amount_type;
	}


	public void setAmount_type(String amount_type) {
		this.amount_type = amount_type;
	}


	public String getAmount() {
		return amount;
	}


	public void setAmount(String amount) {
		this.amount = amount;
	}


	public String getCampaign_id() {
		return campaign_id;
	}


	public void setCampaign_id(String campaign_id) {
		this.campaign_id = campaign_id;
	}


	public String getDonor_name() {
		return donor_name;
	}


	public void setDonor_name(String donor_name) {
		this.donor_name = donor_name;
	}


	public String getDonor_contact() {
		return donor_contact;
	}


	public void setDonor_contact(String donor_contact) {
		this.donor_contact = donor_contact;
	}


	public String getDonor_email() {
		return donor_email;
	}


	public void setDonor_email(String donor_email) {
		this.donor_email = donor_email;
	}


	public String getDonor_address() {
		return donor_address;
	}


	public void setDonor_address(String donor_address) {
		this.donor_address = donor_address;
	}


	public String getDonor_city() {
		return donor_city;
	}


	public void setDonor_city(String donor_city) {
		this.donor_city = donor_city;
	}


	public String getDonor_country() {
		return donor_country;
	}


	public void setDonor_country(String donor_country) {
		this.donor_country = donor_country;
	}


	public String getDonor_message() {
		return donor_message;
	}


	public void setDonor_message(String donor_message) {
		this.donor_message = donor_message;
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("DonationModel [donor_id=").append(donor_id).append(", amount_type=").append(amount_type)
				.append(", amount=").append(amount).append(", campaign_id=").append(campaign_id).append(", donor_name=")
				.append(donor_name).append(", donor_contact=").append(donor_contact).append(", donor_email=")
				.append(donor_email).append(", donor_address=").append(donor_address).append(", donor_city=")
				.append(donor_city).append(", donor_country=").append(donor_country).append(", donor_message=")
				.append(donor_message).append("]");
		return builder.toString();
	}
	
	
	
	

}
