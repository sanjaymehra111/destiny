package com.destiny.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.destiny.model.CampaignsModel;
import com.destiny.model.DonationModel;
import com.destiny.model.FundraiserModel;

@Repository
public class BrowseFundraiserDaoimpl
{
	
	@Autowired
	JdbcTemplate template = new JdbcTemplate();

	public List<FundraiserModel> fetchFundraisersDetails()
	{
		List<FundraiserModel> query1 = template.query("select * from fundraisers_detail where personal_status = 1 order by fundraisers_id desc", new RowMapper<FundraiserModel>()
				
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
						fm.setPersonal_city(rs.getString("personal_city"));
						
						//System.out.println("fm details is : " +fm);
						
						return fm;
					}
			
				});
		
		return query1;
			
		
	}
	
	
	public List<CampaignsModel> fetchCampaignsDetails()
	{
		List<CampaignsModel> query2 = template.query("select * from campaign_details where fundraisers_status = 1 order by fundraisers_id desc", new RowMapper<CampaignsModel>()
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
					
						//System.out.println("cm details is : " +cm);
						return cm;
					}
			
				});
		
		return query2;
		
	}
	
	public List<DonationModel> fetchDonationDetails()
	{
		List<DonationModel> query2 = template.query("select campaign_id, sum(amount) from donation_details group by campaign_id ", new RowMapper<DonationModel>()
				{

					@Override
					public DonationModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub
						
						DonationModel dm = new DonationModel();
						dm.setCampaign_id(rs.getString("campaign_id"));
						dm.setAmount(rs.getString("sum(amount)"));
						
						String query3 = "UPDATE campaign_details SET fundraisers_raised_amount='"+dm.getAmount()+"' WHERE campaign_id ='"+dm.getCampaign_id()+"'";
								
								template.update(query3);
						
								
						
						return dm;
					}
			
				});
		
		return query2;
		
	}


	
}
