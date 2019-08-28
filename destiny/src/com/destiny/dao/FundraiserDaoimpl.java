package com.destiny.dao;

import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.destiny.model.CampaignsModel;
import com.destiny.model.FundraiserModel;

@Repository
public class FundraiserDaoimpl 
{
	@Autowired
	JdbcTemplate template;
	
	String date = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
	
	int key1;
	
	public int InserIntoFundraiser(FundraiserModel fm)
	{
		String sql = "insert into fundraisers_detail (category_type, personal_name, personal_email, personal_password, personal_number, personal_city, personal_updated_date)"+ 
				"values('"+fm.getCategory_type()+"', '"+fm.getPersonal_name()+"', '"+fm.getPersonal_email()+"', '"+fm.getPersonal_password()+"', '"+fm.getPersonal_number()+"', '"+fm.getPersonal_city()+"', '"+date+"')";
		KeyHolder key = new GeneratedKeyHolder();
		
		
		template.update(connection -> {
			PreparedStatement ps = connection.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
			return ps;
		}, key);
		
		fm.setFundraisers_id(String.valueOf(key.getKey().intValue()));
		
		//InserIntoCampaign(null, fm);
		
		//System.out.println("f_id of this user:= "+key.getKey() + "----------------");
		return key.getKey().intValue();
		
	}

	public void InserIntoCampaign(CampaignsModel cm, FundraiserModel fm)
	{
		String sql2 = "insert into campaign_details (fundraisers_id, fundraisers_title, fundraisers_goal_amount, fundraisers_name, fundraisers_contact, fundraisers_email, fundraisers_beneficiary_relation, fundraisers_story, fundraisers_created_date, fundraisers_start_date,  fundraisers_end_date)"
				+ "values('"+fm.getFundraisers_id()+"','"+cm.getFundraisers_title()+"', '"+cm.getFundraisers_goal_amount()+"', '"+cm.getFundraisers_name()+"', '"+cm.getFundraisers_contact()+"', '"+cm.getFundraisers_email()+"', '"+cm.getFundraisers_beneficiary_relation()+"', '"+cm.getFundraisers_story()+"', '"+cm.getFundraisers_created_date()+"', '"+cm.getfundraisers_start_date()+"', '"+cm.getFundraisers_end_date()+"')";
		
		template.update(sql2);
	}
	
	public void InserIntoLoginCampaign(CampaignsModel cm)
	{
		String sql2 = "insert into campaign_details (fundraisers_id, fundraisers_title, fundraisers_goal_amount, fundraisers_name, fundraisers_contact, fundraisers_email, fundraisers_beneficiary_relation, fundraisers_story, fundraisers_created_date, fundraisers_start_date,  fundraisers_end_date)"
				+ "values('"+cm.getFundraisers_id()+"','"+cm.getFundraisers_title()+"', '"+cm.getFundraisers_goal_amount()+"', '"+cm.getFundraisers_name()+"', '"+cm.getFundraisers_contact()+"', '"+cm.getFundraisers_email()+"', '"+cm.getFundraisers_beneficiary_relation()+"', '"+cm.getFundraisers_story()+"', '"+cm.getFundraisers_created_date()+"', '"+cm.getfundraisers_start_date()+"', '"+cm.getFundraisers_end_date()+"')";
		
		template.update(sql2);
	}
	






	public String fetchData(String personal_name, String personal_email)
	{
		String sql1="Select fundraisers_id from fundraisers_details where personal_name = ? and personal_email = ?";
		String f_id=template.queryForObject(sql1, new Object[] {personal_name, personal_email}, String.class);
		
		//System.out.println("UserDao : " + f_id);
		return f_id;
	}
	

}
