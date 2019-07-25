package com.destiny.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.destiny.model.UserUpdateModel;

@Repository
public class UserUpdateDaoimpl 
{
	
	@Autowired
	JdbcTemplate template = new JdbcTemplate();

	//Update pan card number
	
	public int UpdatePan(UserUpdateModel uum)
	{
		String sql1 = "UPDATE fundraisers_details SET personal_pan_no='"+uum.getPersonal_pan_no()+"' WHERE fundraisers_id='"+uum.getFundraisers_id()+"'";
		return template.update(sql1);
	}

	
	//Update aadhar card number
	
	public int UpdateAadhar(UserUpdateModel uum)
	{
		String sql2 = "UPDATE fundraisers_details SET personal_aadhar_no='"+uum.getPersonal_aadhar_no()+"' WHERE fundraisers_id='"+uum.getFundraisers_id()+"'";
		return template.update(sql2);
	}
	
	//Update user Details
	
	public int UpdateuserDetails(UserUpdateModel uum)
	{
		String sql3 = "UPDATE fundraisers_details SET personal_name='"+uum.getPersonal_name()+"', personal_city='"+uum.getPersonal_city()+"', personal_dob='"+uum.getPersonal_dob()+"' WHERE fundraisers_id='"+uum.getFundraisers_id()+"'";
		return template.update(sql3);
	}

}
