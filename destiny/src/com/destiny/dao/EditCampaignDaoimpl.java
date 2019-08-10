package com.destiny.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.destiny.model.EditCampaignModel;

@Repository
public class EditCampaignDaoimpl
{
	@Autowired
	JdbcTemplate template = new JdbcTemplate();
	
	//update Campaign Details
	
	public int EditCampaignNoImg(EditCampaignModel ecm)
	{
		String sql1 = "UPDATE campaign_details SET fundraisers_title='"+ecm.getFundraisers_title()+"', fundraisers_goal_amount='"+ecm.getFundraisers_goal_amount()+"', fundraisers_story='"+ecm.getFundraisers_story()+"', fundraisers_name='"+ecm.getFundraisers_name()+"', fundraisers_contact='"+ecm.getFundraisers_contact()+"', fundraisers_email='"+ecm.getFundraisers_email()+"', fundraisers_upi_number='"+ecm.getFundraisers_upi_number()+"'where campaign_id = '"+ecm.getCampaign_id()+"'";
		return template.update(sql1);
	}
	
	public int EditCampaignImg(EditCampaignModel ecm, String filename, String filename2)
	{
		String sql1 = "UPDATE campaign_details SET fundraisers_title='"+ecm.getFundraisers_title()+"', fundraisers_goal_amount='"+ecm.getFundraisers_goal_amount()+"', fundraisers_story='"+ecm.getFundraisers_story()+"', fundraisers_name='"+ecm.getFundraisers_name()+"', fundraisers_contact='"+ecm.getFundraisers_contact()+"', fundraisers_email='"+ecm.getFundraisers_email()+"', fundraisers_upi_number='"+ecm.getFundraisers_upi_number()+"',fundraisers_profile_image='"+"/destiny/files/profile-images/"+filename+"', fundraisers_upi_image='"+"/destiny/files/upi-images/"+filename2+"' where campaign_id = '"+ecm.getCampaign_id()+"'";
		return template.update(sql1);
	}

}
