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
		List<FundraiserModel> query1 = template.query("select * from fundraisers_detail where personal_status = 1 ", new RowMapper<FundraiserModel>()
				
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
		List<CampaignsModel> query2 = template.query("select * from campaign_details where fundraisers_status = 1 order by campaign_id desc ", new RowMapper<CampaignsModel>()
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
						cm.setFundraisers_campaign_images(rs.getString("fundraisers_campaign_images"));
						cm.setFundraisers_campaign_documents(rs.getString("fundraisers_campaign_documents"));
					
						//System.out.println("cm details is : " +cm);
						return cm;
					}
			
				});
		
		return query2;
		
	}
	
	
	public List<CampaignsModel> FetchBrowseCampaignsDetails(int index)
	{
		List<CampaignsModel> query2 = template.query("select * from campaign_details where fundraisers_status = 1 order by campaign_id desc limit 0,"+index+" ", new RowMapper<CampaignsModel>()
				{

					@Override
					public CampaignsModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub
						
						CampaignsModel cm = new CampaignsModel();

						cm.setCampaign_id(rs.getString("campaign_id"));
						cm.setFundraisers_id(rs.getString("fundraisers_id"));
						cm.setCampaign_type(rs.getString("campaign_type"));
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
						cm.setFundraisers_campaign_images(rs.getString("fundraisers_campaign_images"));
						cm.setFundraisers_campaign_documents(rs.getString("fundraisers_campaign_documents"));
					
						//System.out.println("cm details is : " +cm);
						return cm;
					}
			
				});
		
		return query2;
		
	}
	
	
	public List<CampaignsModel> fetchSuccessCampaignsDetails()
	{
		List<CampaignsModel> query2 = template.query("select * from campaign_details where fundraisers_status = 2 order by fundraisers_campaign_success_date desc", new RowMapper<CampaignsModel>()
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
						cm.setFundraisers_campaign_images(rs.getString("fundraisers_campaign_images"));
						cm.setFundraisers_campaign_documents(rs.getString("fundraisers_campaign_documents"));
						cm.setFundraisers_campaign_success_date(rs.getString("fundraisers_campaign_success_date"));
					
						//System.out.println("cm details is : " +cm);
						return cm;
					}
			
				});
		
		return query2;
		
	}
	
	
	// update fundraisers raised amount
	
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
						
						String query3 = "UPDATE campaign_details SET fundraisers_raised_amount='"+dm.getAmount()+"'  WHERE campaign_id ='"+dm.getCampaign_id()+"'";
								template.update(query3);
						
						return dm;
					}
			
				});
		
		return query2;
		
	}
	
	public List<DonationModel> fetchDonorList()
	{
		List<DonationModel> query3 = template.query("SELECT campaign_id, COUNT(*) FROM donation_details GROUP BY campaign_id", new RowMapper<DonationModel>()
				
			{
			
					@Override
					public DonationModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub
						
						DonationModel dm = new DonationModel();
						dm.setCampaign_id(rs.getString("campaign_id"));
						dm.setDonor_list(rs.getString("count(*)"));
						
						String query3 = "UPDATE campaign_details SET fundraisers_donor_list='"+dm.getDonor_list()+"' WHERE campaign_id ='"+dm.getCampaign_id()+"'";
								
						template.update(query3);
						
						return dm;
					}
			
				});
		
		return query3;
		
	}


	
}
