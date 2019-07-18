package com.destiny.dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.destiny.model.FundraisersModel;

@Repository
public class FundraisersDaoimpl 
{

	@Autowired
	JdbcTemplate template = new JdbcTemplate();
	
	public int save(FundraisersModel fm)
	{
		String sql = "insert into fundraisers_details(category_type, personal_name, personal_email, personal_number, personal_city, fundraisers_title, fundraisers_goal_amount, fundraisers_name, fundraisers_contact, fundraisers_email, fundraisers_beneficiary_relaion, fundraisers_story)"
				+ "values('"+fm.getCategory_type()+"','"+fm.getPersonal_name()+"', '"+fm.getPersonal_email()+"', '"+fm.getPersonal_number()+"', '"+fm.getPersonal_city()+"', '"+fm.getFundraisers_title()+"', '"+fm.getFundraisers_goal_amount()+"', '"+fm.getFundraisers_name()+"', '"+fm.getFundraisers_contact()+"', '"+fm.getFundraisers_email()+"', '"+fm.getFundraisers_beneficiary_relaion()+"', '"+fm.getFundraisers_story()+"')";

		return template.update(sql);	
	}
	
}
