package com.destiny.model;

public class CampaignWithdrawAmountModel 
{

	String withdraw_id;
	String fundraisers_id;
	String campaign_id;
	String withdraw_amount;
	String balance_amount;
	String request_date;
	String approved_date;
	String campaign_title;
	String withdraw_status;
	
	public CampaignWithdrawAmountModel(){}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CampaignWithdrawAmountModel [withdraw_id=").append(withdraw_id).append(", fundraisers_id=")
				.append(fundraisers_id).append(", campaign_id=").append(campaign_id).append(", withdraw_amount=")
				.append(withdraw_amount).append(", balance_amount=").append(balance_amount).append(", request_date=")
				.append(request_date).append(", approved_date=").append(approved_date).append(", campaign_title=")
				.append(campaign_title).append(", withdraw_status=").append(withdraw_status).append("]");
		return builder.toString();
	}

	public String getWithdraw_id() {
		return withdraw_id;
	}

	public void setWithdraw_id(String withdraw_id) {
		this.withdraw_id = withdraw_id;
	}

	public String getFundraisers_id() {
		return fundraisers_id;
	}

	public void setFundraisers_id(String fundraisers_id) {
		this.fundraisers_id = fundraisers_id;
	}

	public String getCampaign_id() {
		return campaign_id;
	}

	public void setCampaign_id(String campaign_id) {
		this.campaign_id = campaign_id;
	}

	public String getWithdraw_amount() {
		return withdraw_amount;
	}

	public void setWithdraw_amount(String withdraw_amount) {
		this.withdraw_amount = withdraw_amount;
	}
	
	
	
	public String getBalance_amount() {
		return balance_amount;
	}

	public void setBalance_amount(String balance_amount) {
		this.balance_amount = balance_amount;
	}

	public String getRequest_date() {
		return request_date;
	}

	public void setRequest_date(String request_date) {
		this.request_date = request_date;
	}
	
	

	public String getApproved_date() {
		return approved_date;
	}

	public void setApproved_date(String approved_date) {
		this.approved_date = approved_date;
	}

	public String getCampaign_title() {
		return campaign_title;
	}

	public void setCampaign_title(String campaign_title) {
		this.campaign_title = campaign_title;
	}

	public String getWithdraw_status() {
		return withdraw_status;
	}

	public void setWithdraw_status(String withdraw_status) {
		this.withdraw_status = withdraw_status;
	}

	public CampaignWithdrawAmountModel(String withdraw_id, String fundraisers_id, String campaign_id,
			String withdraw_amount, String balance_amount, String request_date, String approved_date,
			String campaign_title, String withdraw_status) {
		super();
		this.withdraw_id = withdraw_id;
		this.fundraisers_id = fundraisers_id;
		this.campaign_id = campaign_id;
		this.withdraw_amount = withdraw_amount;
		this.balance_amount = balance_amount;
		this.request_date = request_date;
		this.approved_date = approved_date;
		this.campaign_title = campaign_title;
		this.withdraw_status = withdraw_status;
	}

	
	
	
	
	
}
