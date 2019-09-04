package com.destiny.model;

public class AdminLoginModel 
{
	String a_id;
	String admin_id;
	String admin_password;
	String admin_name;
	String fundraisers_qty;
	String campaign_qty;
	String volunteer_qty;
	String withdraw_request_qty;
	


	public String getWithdraw_request_qty() {
		return withdraw_request_qty;
	}




	public void setWithdraw_request_qty(String withdraw_request_qty) {
		this.withdraw_request_qty = withdraw_request_qty;
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

	


	public String getAdmin_name() {
		return admin_name;
	}




	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}



	

	public String getFundraisers_qty() {
		return fundraisers_qty;
	}




	public void setFundraisers_qty(String fundraisers_qty) {
		this.fundraisers_qty = fundraisers_qty;
	}




	public String getCampaign_qty() {
		return campaign_qty;
	}




	public void setCampaign_qty(String campaign_qty) {
		this.campaign_qty = campaign_qty;
	}




	public String getVolunteer_qty() {
		return volunteer_qty;
	}




	public void setVolunteer_qty(String volunteer_qty) {
		this.volunteer_qty = volunteer_qty;
	}




	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("AdminLoginModel [a_id=").append(a_id).append(", admin_id=").append(admin_id)
				.append(", admin_password=").append(admin_password).append(", admin_name=").append(admin_name)
				.append(", fundraisers_qty=").append(fundraisers_qty).append(", campaign_qty=").append(campaign_qty)
				.append(", volunteer_qty=").append(volunteer_qty).append(", withdraw_request_qty=")
				.append(withdraw_request_qty).append("]");
		return builder.toString();
	}




	public AdminLoginModel(String a_id, String admin_id, String admin_password, String admin_name,
			String fundraisers_qty, String campaign_qty, String volunteer_qty, String withdraw_request_qty) {
		super();
		this.a_id = a_id;
		this.admin_id = admin_id;
		this.admin_password = admin_password;
		this.admin_name = admin_name;
		this.fundraisers_qty = fundraisers_qty;
		this.campaign_qty = campaign_qty;
		this.volunteer_qty = volunteer_qty;
		this.withdraw_request_qty = withdraw_request_qty;
	}





	
	
}
