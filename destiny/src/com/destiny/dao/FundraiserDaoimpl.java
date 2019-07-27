package com.destiny.dao;

import java.sql.PreparedStatement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.destiny.model.CampaignsModel.CampaignModel;
import com.destiny.model.FundraiserModel;
import com.destiny.model.FundraisersModel;
import com.destiny.model.UserLoginModel;

@Repository
public class FundraiserDaoimpl 
{
	@Autowired
	JdbcTemplate template;
	int key1;
	
	public int save(FundraisersModel fm)
	{
		String sql = "insert into fundraisers_detail (category_type, personal_name, personal_email, personal_number, personal_city)"+ 
				"values('"+fm.getCategory_type()+"', '"+fm.getPersonal_name()+"', '"+fm.getPersonal_email()+"', '"+fm.getPersonal_number()+"', '"+fm.getPersonal_city()+"')";
		KeyHolder key = new GeneratedKeyHolder();
		
		
		template.update(connection -> {
			PreparedStatement ps = connection.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
			return ps;
		}, key);
		
		fm.setFundraisers_id(String.valueOf(key.getKey().intValue()));
		save2(fm);
		
//		System.out.println("f_id of this user:= "+key.getKey() + "----------------");
		return key.getKey().intValue();
		
//		String sql = "insert into fundraisers_detail (category_type, personal_name, personal_email, personal_number, personal_city)"
//				+ "values('"+fm.getCategory_type()+"', '"+fm.getPersonal_name()+"', '"+fm.getPersonal_email()+"', '"+fm.getPersonal_number()+"', '"+fm.getPersonal_city()+"')";
//		
//		String sql1="Select fundraisers_id from fundraisers_detail where personal_email = '"+fm.getPersonal_email()+"'";
//		String f_id=template.queryForObject(sql1, new Object[] {fm.getPersonal_email()}, String.class);
//		
//		System.out.println("sql 1 is : " + f_id);
//		
//		System.out.println("f id: " + fm.getFundraisers_id());
//		
//		
//		String sql2 = "insert into campaign_details (fundraisers_title, fundraisers_goal_amount, fundraisers_name, fundraisers_contact, fundraisers_email, fundraisers_beneficiary_relation, fundraisers_story)"
//				+ "values('"+fm.getFundraisers_title()+"', '"+fm.getFundraisers_goal_amount()+"', '"+fm.getFundraisers_name()+"', '"+fm.getFundraisers_contact()+"', '"+fm.getFundraisers_email()+"', '"+fm.getFundraisers_beneficiary_relation()+"', '"+fm.getFundraisers_story()+"')";
//		
//		
//		template.update(sql);
//		return template.update(sql2);
	}

	public void save2(FundraisersModel fm)
	{
		String sql2 = "insert into campaign_details (fundraisers_id, fundraisers_title, fundraisers_goal_amount, fundraisers_name, fundraisers_contact, fundraisers_email, fundraisers_beneficiary_relation, fundraisers_story)"
				+ "values('"+fm.getFundraisers_id()+"','"+fm.getFundraisers_title()+"', '"+fm.getFundraisers_goal_amount()+"', '"+fm.getFundraisers_name()+"', '"+fm.getFundraisers_contact()+"', '"+fm.getFundraisers_email()+"', '"+fm.getFundraisers_beneficiary_relation()+"', '"+fm.getFundraisers_story()+"')";
		
		template.update(sql2);
	}
	
/*	




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
