package com.destiny.dao;


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
	
	public int EditCampaignDetails(EditCampaignModel ecm)
	{
		String sql1 = "UPDATE campaign_details SET fundraisers_title='"+ecm.getFundraisers_title()+"', fundraisers_goal_amount='"+ecm.getFundraisers_goal_amount()+"', fundraisers_story='"+ecm.getFundraisers_story()+"' where campaign_id = '"+ecm.getCampaign_id()+"'";
		return template.update(sql1);
	}
	
	//update Campaign fundraisers Details 
	
	public int EditCampaignFundraisers(EditCampaignModel ecm)
	{
		String sql1 = "UPDATE campaign_details SET fundraisers_name='"+ecm.getFundraisers_name()+"', fundraisers_contact='"+ecm.getFundraisers_contact()+"', fundraisers_email='"+ecm.getFundraisers_email()+"' where campaign_id = '"+ecm.getCampaign_id()+"'";
		return template.update(sql1);
	}
	
	//update Campaign fundraisers Details with Profile Image
	
	public int EditCampaignFundraisersProfile(EditCampaignModel ecm, String filename)
	{
		String sql1 = "UPDATE campaign_details SET fundraisers_name='"+ecm.getFundraisers_name()+"', fundraisers_contact='"+ecm.getFundraisers_contact()+"', fundraisers_email='"+ecm.getFundraisers_email()+"', fundraisers_profile_image='"+"/destiny/files/profile-images/"+filename+"' where campaign_id = '"+ecm.getCampaign_id()+"'";
		return template.update(sql1);
	}

	//update Campaign upi number
	
	public int EditCampaignUpiNo(EditCampaignModel ecm)
	{
		String sql1 = "UPDATE campaign_details SET fundraisers_upi_number='"+ecm.getFundraisers_upi_number()+"' where campaign_id = '"+ecm.getCampaign_id()+"'";
		return template.update(sql1);
	}
	
	//update Campaign upi number with image
	
		public int EditCampaignUpiImg(EditCampaignModel ecm, String filename2)
		{
			String sql1 = "UPDATE campaign_details SET fundraisers_upi_number='"+ecm.getFundraisers_upi_number()+"', fundraisers_upi_image='"+"/destiny/files/upi-images/"+filename2+"' where campaign_id = '"+ecm.getCampaign_id()+"'";
			return template.update(sql1);
		}

}
