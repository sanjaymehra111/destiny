package com.destiny.dao;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.destiny.model.CampaignAccountModel;
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
		
		//update Campaign images
		
			public int EditCampaignImages(EditCampaignModel ecm, String filename3)
			{
					//System.out.println("files dao is : " + filename3);
					String sql1 = "update campaign_details SET fundraisers_campaign_images='"+filename3+"' where campaign_id = '"+ecm.getCampaign_id()+"'";
					return template.update(sql1);
				
			}

		
			//update Campaign Documents
			
			public int EditCampaignDocuments(EditCampaignModel ecm, String filename4)
			{
					//System.out.println("files dao is : " + filename3);
					String sql1 = "update campaign_details SET fundraisers_campaign_documents='"+filename4+"' where campaign_id = '"+ecm.getCampaign_id()+"'";
					return template.update(sql1);
				
			}

			//update Campaign account details
			
			public int EditCampaignAccount(CampaignAccountModel cam)
			{
				String sql1 = "UPDATE campaign_account_details SET account_holder_name='"+cam.getAccount_holder_name()+"', account_number='"+cam.getAccount_number()+"', account_ifsc='"+cam.getAccount_ifsc()+"', account_swift='"+cam.getAccount_swift()+"', account_bank_name='"+cam.getAccount_bank_name()+"'  where campaign_id = '"+cam.getCampaign_id()+"'";
				return template.update(sql1);
			}
		

}
