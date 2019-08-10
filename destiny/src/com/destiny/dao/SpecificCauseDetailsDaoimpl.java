package com.destiny.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.destiny.model.CampaignsModel;
import com.destiny.model.FundraiserModel;

@Repository
public class SpecificCauseDetailsDaoimpl 
{
	@Autowired
	JdbcTemplate template;
	
	public List<FundraiserModel> fetchFundraisersDetails(String fund_id)
	{
		List <FundraiserModel> query1 = template.query("select * from fundraisers_detail where fundraisers_id = '"+fund_id+"'", new RowMapper<FundraiserModel>()
				{
					@Override
					public FundraiserModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub
						FundraiserModel fm= new FundraiserModel();
						fm.setFundraisers_id(rs.getString("fundraisers_id"));
						fm.setCategory_type(rs.getString("category_type"));
						fm.setPersonal_name(rs.getString("personal_name"));
						fm.setPersonal_email(rs.getString("personal_email"));
						fm.setPersonal_number(rs.getString("personal_number"));
						fm.setPersonal_dob(rs.getString("personal_dob"));
						fm.setPersonal_city(rs.getString("personal_city"));
						fm.setPersonal_pan_no(rs.getString("personal_pan_no"));
						fm.setPersonal_aadhar_no(rs.getString("personal_aadhar_no"));
						fm.setPersonal_profile_image(rs.getString("personal_profile_image"));
						fm.setPersonal_status(rs.getString("personal_status"));
						return fm;
					}
			});
		return query1;
	}
	
	public List<CampaignsModel> fetchCampaignsDetails(String camp_id)
	{
		
		List<CampaignsModel> query2 = template.query("select * from campaign_details where campaign_id = '"+camp_id+"'", new RowMapper<CampaignsModel>()
				{

					@Override
					public CampaignsModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub
						
						CampaignsModel cm = new CampaignsModel();
						cm.setCampaign_id(rs.getString("campaign_id"));
						cm.setFundraisers_id(rs.getString("fundraisers_id"));
						cm.setFundraisers_title(rs.getString("fundraisers_title"));
						cm.setFundraisers_goal_amount(rs.getString("fundraisers_goal_amount"));
						cm.setFundraisers_raised_amount(rs.getString("fundraisers_raised_amount"));
						cm.setFundraisers_name(rs.getString("fundraisers_name"));
						cm.setFundraisers_contact(rs.getString("fundraisers_contact"));
						cm.setFundraisers_email(rs.getString("fundraisers_email"));
						cm.setFundraisers_beneficiary_relation(rs.getString("fundraisers_beneficiary_relation"));
						cm.setFundraisers_story(rs.getString("fundraisers_story"));
						cm.setfundraisers_start_date(rs.getString("fundraisers_start_date"));
						cm.setFundraisers_end_date(rs.getString("fundraisers_end_date"));
						cm.setFundraisers_created_date(rs.getString("fundraisers_created_date"));
						cm.setFundraisers_status(rs.getString("fundraisers_status"));
						cm.setFundraisers_profile_image(rs.getString("fundraisers_profile_image"));
						cm.setFundraisers_upi_image(rs.getString("fundraisers_upi_image"));
						cm.setFundraisers_upi_number(rs.getString("fundraisers_upi_number"));
						
						
						return cm;
					}
			
				}
				);
		return query2;
	}
	
	
	
	public List<CampaignsModel> fetchCampaignUsingfid(String f_id)
	{
		
		List<CampaignsModel> query2 = template.query("select * from campaign_details where fundraisers_id = '"+f_id+"'", new RowMapper<CampaignsModel>()
				{

					@Override
					public CampaignsModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub
						
						CampaignsModel cm = new CampaignsModel();
						cm.setCampaign_id(rs.getString("campaign_id"));
						cm.setFundraisers_id(rs.getString("fundraisers_id"));
						cm.setFundraisers_title(rs.getString("fundraisers_title"));
						cm.setFundraisers_goal_amount(rs.getString("fundraisers_goal_amount"));
						cm.setFundraisers_name(rs.getString("fundraisers_name"));
						cm.setFundraisers_contact(rs.getString("fundraisers_contact"));
						cm.setFundraisers_email(rs.getString("fundraisers_email"));
						cm.setFundraisers_beneficiary_relation(rs.getString("fundraisers_beneficiary_relation"));
						cm.setFundraisers_story(rs.getString("fundraisers_story"));
						cm.setfundraisers_start_date(rs.getString("fundraisers_start_date"));
						cm.setFundraisers_end_date(rs.getString("fundraisers_end_date"));
						cm.setFundraisers_created_date(rs.getString("fundraisers_created_date"));
						cm.setFundraisers_status(rs.getString("fundraisers_status"));
						
						return cm;
					}
			
				}
				);
		return query2;
	}

}
