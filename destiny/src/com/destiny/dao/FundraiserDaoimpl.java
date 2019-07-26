package com.destiny.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.destiny.model.CampaignsModel.CampaignModel;
import com.destiny.model.FundraiserModel;
import com.destiny.model.FundraisersModel;

@Repository
public class FundraiserDaoimpl 
{
	@Autowired
	JdbcTemplate template;
	
	public int save(FundraisersModel fm)
	{
		String sql = "insert into fundraisers_detail(category_type, personal_name, personal_email, personal_number, personal_city)"
				+ "values('"+fm.getCategory_type()+"', '"+fm.getPersonal_name()+"', '"+fm.getPersonal_email()+"', '"+fm.getPersonal_number()+"', '"+fm.getPersonal_city()+"')";

		System.out.println("enter 1 success : " + sql);
		
		String sql2 = "insert into campaign_details (fundraisers_title, fundraisers_goal_amount, fundraisers_name, fundraisers_contact, fundraisers_email, fundraisers_beneficiary_relaion, fundraisers_story)"
				+ "values('"+fm.getFundraisers_title()+"', '"+fm.getFundraisers_goal_amount()+"', '"+fm.getFundraisers_name()+"', '"+fm.getFundraisers_contact()+"', '"+fm.getFundraisers_email()+"', '"+fm.getFundraisers_beneficiary_relaion()+"', '"+fm.getFundraisers_story()+"')";
		
		System.out.println("enter 2 success : " + sql2);
		
		return template.update(sql);	
	} 
/*	
	public int save(CampaignModel cm)
	{
		String sql = "insert into campaign_details(fundraisers_title, fundraisers_goal_amount, fundraisers_name, fundraisers_contact, fundraisers_email, fundraisers_beneficiary_relaion, fundraisers_story)"
				+ "values('"+cm.getFundraisers_title()+"', '"+cm.getFundraisers_goal_amount()+"', '"+cm.getFundraisers_name()+"', '"+cm.getFundraisers_contact()+"', '"+cm.getFundraisers_email()+"', '"+cm.getFundraisers_beneficiary_relaion()+"', '"+cm.getFundraisers_story()+"')";

		return template.update(sql);	
	}
	*/

	public String fetchData(String personal_name, String personal_email)
	{
		String sql1="Select fundraisers_id from fundraisers_details where personal_name = ? and personal_email = ?";
		String f_id=template.queryForObject(sql1, new Object[] {personal_name, personal_email}, String.class);
		
		//System.out.println("UserDao : " + f_id);
		return f_id;
	}
	

}
