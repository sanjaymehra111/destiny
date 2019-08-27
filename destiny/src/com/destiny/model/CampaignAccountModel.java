package com.destiny.model;

public class CampaignAccountModel 
{
	String fundraisers_id;
	String campaign_id;
	String account_type;
	String account_holder_name;
	String account_number;
	String account_ifsc;
	String account_swift;
	String account_bank_name;
	String pan_image;
	String aadhar_image;
	String cancel_cheque_image;
	String doc_files;
	

	public CampaignAccountModel(){}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CampaignAccountModel [fundraisers_id=").append(fundraisers_id).append(", campaign_id=")
				.append(campaign_id).append(", account_type=").append(account_type).append(", account_holder_name=")
				.append(account_holder_name).append(", account_number=").append(account_number)
				.append(", account_ifsc=").append(account_ifsc).append(", account_swift=").append(account_swift)
				.append(", account_bank_name=").append(account_bank_name).append(", pan_image=").append(pan_image)
				.append(", aadhar_image=").append(aadhar_image).append(", cancel_cheque_image=")
				.append(cancel_cheque_image).append(", doc_files=").append(doc_files).append("]");
		return builder.toString();
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
	public String getAccount_type() {
		return account_type;
	}
	public void setAccount_type(String account_type) {
		this.account_type = account_type;
	}
	public String getAccount_holder_name() {
		return account_holder_name;
	}
	public void setAccount_holder_name(String account_holder_name) {
		this.account_holder_name = account_holder_name;
	}
	public String getAccount_number() {
		return account_number;
	}
	public void setAccount_number(String account_number) {
		this.account_number = account_number;
	}
	public String getAccount_ifsc() {
		return account_ifsc;
	}
	public void setAccount_ifsc(String account_ifsc) {
		this.account_ifsc = account_ifsc;
	}
	public String getAccount_swift() {
		return account_swift;
	}
	public void setAccount_swift(String account_swift) {
		this.account_swift = account_swift;
	}
	public String getAccount_bank_name() {
		return account_bank_name;
	}
	public void setAccount_bank_name(String account_bank_name) {
		this.account_bank_name = account_bank_name;
	}
	public String getPan_image() {
		return pan_image;
	}
	public void setPan_image(String pan_image) {
		this.pan_image = pan_image;
	}
	public String getAadhar_image() {
		return aadhar_image;
	}
	public void setAadhar_image(String aadhar_image) {
		this.aadhar_image = aadhar_image;
	}
	public String getCancel_cheque_image() {
		return cancel_cheque_image;
	}
	public void setCancel_cheque_image(String cancel_cheque_image) {
		this.cancel_cheque_image = cancel_cheque_image;
	}
	public String getdoc_files() {
		return doc_files;
	}
	public void setdoc_files(String doc_files) {
		this.doc_files = doc_files;
	}

	public CampaignAccountModel(String fundraisers_id, String campaign_id, String account_type,
			String account_holder_name, String account_number, String account_ifsc, String account_swift,
			String account_bank_name, String pan_image, String aadhar_image, String cancel_cheque_image,
			String doc_files) {
		super();
		this.fundraisers_id = fundraisers_id;
		this.campaign_id = campaign_id;
		this.account_type = account_type;
		this.account_holder_name = account_holder_name;
		this.account_number = account_number;
		this.account_ifsc = account_ifsc;
		this.account_swift = account_swift;
		this.account_bank_name = account_bank_name;
		this.pan_image = pan_image;
		this.aadhar_image = aadhar_image;
		this.cancel_cheque_image = cancel_cheque_image;
		this.doc_files = doc_files;
	}
	

	

}
