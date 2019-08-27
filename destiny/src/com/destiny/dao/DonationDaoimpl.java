package com.destiny.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.destiny.model.DonationModel;

@Repository
public class DonationDaoimpl 
{
	
	@Autowired
	JdbcTemplate template;
	
	public int save(DonationModel dm)
	{
		String sql = "insert into donation_details(amount_type, amount, campaign_id, donor_name, donor_contact, donor_email, donor_address, donor_city, donor_country, donor_message, donation_date)"
				+ "values('"+dm.getAmount_type()+"', '"+dm.getAmount()+"', '"+dm.getCampaign_id()+"', '"+dm.getDonor_name()+"', '"+dm.getDonor_contact()+"', '"+dm.getDonor_email()+"', '"+dm.getDonor_address()+"','"+dm.getDonor_city()+"', '"+dm.getDonor_country()+"', '"+dm.getDonor_message()+"', '"+dm.getDonation_date()+"')";
		 
				return template.update(sql);
				
	}
	

}
