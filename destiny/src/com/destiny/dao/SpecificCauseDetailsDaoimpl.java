package com.destiny.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.destiny.model.FundraisersModel;

@Repository
public class SpecificCauseDetailsDaoimpl 
{
	@Autowired
	JdbcTemplate template;
	
	public List<FundraisersModel> fetch(String camp_id)
	{
		List <FundraisersModel> query2 = template.query("select * from fundraisers_details where fundraisers_id = '"+camp_id+"'", new RowMapper<FundraisersModel>()
		

				{

					@Override
					public FundraisersModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub
						
						FundraisersModel fm= new FundraisersModel();
						fm.setFundraisers_id(rs.getString("fundraisers_id"));
						fm.setCategory_type(rs.getString("category_type"));
						fm.setPersonal_name(rs.getString("personal_name"));
						fm.setPersonal_email(rs.getString("personal_email"));
						fm.setPersonal_number(rs.getString("personal_number"));
						fm.setPersonal_city(rs.getString("personal_city"));
						fm.setFundraisers_title(rs.getString("fundraisers_title"));
						fm.setFundraisers_goal_amount(rs.getString("fundraisers_goal_amount"));
						fm.setFundraisers_name(rs.getString("fundraisers_name"));
						fm.setFundraisers_contact(rs.getString("fundraisers_contact"));
						fm.setFundraisers_email(rs.getString("fundraisers_email"));
						fm.setFundraisers_beneficiary_relaion(rs.getString("fundraisers_beneficiary_relaion"));
						fm.setFundraisers_story(rs.getString("fundraisers_story"));
						fm.setPersonal_aadhar_no(rs.getString("personal_aadhar_no"));
						fm.setPersonal_pan_no(rs.getString("personal_pan_no"));
						fm.setPersonal_dob(rs.getString("personal_dob"));
						
						//System.out.println(" f id:"+ fm.getFundraisers_id());
						
						return fm;
					}
			
				}
				

	);
		return query2;
		
	}

}
