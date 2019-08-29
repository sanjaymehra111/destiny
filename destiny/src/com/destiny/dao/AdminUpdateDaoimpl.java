package com.destiny.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.destiny.model.AdminLoginModel;
import com.destiny.model.CampaignsModel;
import com.destiny.model.FundraiserModel;

@Repository
public class AdminUpdateDaoimpl 
{
	@Autowired
	JdbcTemplate template;
	
	//Get fundraisers Quantity
	
	String date = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
	
	public AdminLoginModel FundraisersQuantity()
	{
		List<AdminLoginModel> query1 = template.query("select count(fundraisers_id) from fundraisers_detail", new RowMapper<AdminLoginModel>()
				{
					@Override
					public AdminLoginModel mapRow(ResultSet rs, int arg1) throws SQLException {
						AdminLoginModel alm = new AdminLoginModel();
						alm.setFundraisers_qty(rs.getString("count(fundraisers_id)"));
						
						return alm;
					}
				});
		return query1.get(0);
	}
	
	
	//Get campaigns Quantit
	
	public AdminLoginModel CampaignsQuantity()
	{
		List<AdminLoginModel> query2 = template.query("SELECT COUNT(campaign_id) FROM campaign_details", new RowMapper<AdminLoginModel>()
				{
					@Override
					public AdminLoginModel mapRow(ResultSet rs, int arg1) throws SQLException {
						AdminLoginModel alm = new AdminLoginModel();
						alm.setCampaign_qty(rs.getString("count(campaign_id)"));
						
						return alm;
					}
				});
		return query2.get(0);
	}
	
	
	
	
	//Get fundraisers Details
	
	public List<FundraiserModel> FetchFundraisers()
	{
		List<FundraiserModel> query3 = template.query("SELECT * FROM fundraisers_detail ORDER BY personal_updated_date DESC", new RowMapper<FundraiserModel>()
				{

					@Override
					public FundraiserModel mapRow(ResultSet rs, int arg1) throws SQLException {
						FundraiserModel fm = new FundraiserModel();
						
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
						fm.setPersonal_updated_date(rs.getString("personal_updated_date"));
						fm.setPersonal_status(rs.getString("personal_status"));
						return fm;
					}
				});
		return query3;
	}
	
	
	
	//Get fundraisers Details
	
		public List<CampaignsModel> FetchCampaigns()
		{
			List<CampaignsModel> query3 = template.query("SELECT * FROM campaign_details ORDER BY fundraisers_campaign_updated_date DESC", new RowMapper<CampaignsModel>()
					{

						@Override
						public CampaignsModel mapRow(ResultSet rs, int arg1) throws SQLException {
							CampaignsModel cm = new CampaignsModel();
							
							cm.setCampaign_id(rs.getString("campaign_id"));
							cm.setFundraisers_id(rs.getString("fundraisers_id"));
							cm.setFundraisers_title(rs.getString("fundraisers_title"));
							cm.setFundraisers_goal_amount(rs.getString("fundraisers_goal_amount"));
							cm.setFundraisers_raised_amount(rs.getString("fundraisers_raised_amount"));
							cm.setFundraisers_donor_list(rs.getString("fundraisers_donor_list"));
							cm.setFundraisers_name(rs.getString("fundraisers_name"));
							cm.setFundraisers_contact(rs.getString("fundraisers_contact"));
							cm.setFundraisers_email(rs.getString("fundraisers_email"));
							cm.setFundraisers_beneficiary_relation(rs.getString("fundraisers_beneficiary_relation"));
							cm.setFundraisers_story(rs.getString("fundraisers_story"));
							cm.setfundraisers_start_date(rs.getString("fundraisers_start_date"));
							cm.setFundraisers_end_date(rs.getString("fundraisers_end_date"));
							cm.setFundraisers_created_date(rs.getString("fundraisers_created_date"));
							cm.setFundraisers_profile_image(rs.getString("fundraisers_profile_image"));
							cm.setFundraisers_upi_image(rs.getString("fundraisers_upi_image"));
							cm.setFundraisers_upi_number(rs.getString("fundraisers_upi_number"));
							cm.setFundraisers_campaign_images(rs.getString("fundraisers_campaign_images"));
							cm.setFundraisers_campaign_documents(rs.getString("fundraisers_campaign_documents"));
							cm.setFundraisers_campaign_updated_date(rs.getString("fundraisers_campaign_updated_date"));
							cm.setFundraisers_status(rs.getString("fundraisers_status"));
							
							return cm;
						}
					});
			return query3;
		}
	
	
	//Update unblock_user

	public int UpdateUnblockUser(String fid)
	{
		String query4 = "update fundraisers_detail set personal_status=1 where fundraisers_id ='"+fid+"'";
		return template.update(query4);
	}
	
	//Update block_user

	public int UpdateblockUser(String fid)
	{
		String query5 = "update fundraisers_detail set personal_status=0 where fundraisers_id ='"+fid+"'";
		return template.update(query5);
	}

	//Update block_user

	public FundraiserModel FetchUserDetails(String fid)
	{
		List<FundraiserModel> query6 = template.query("select * from fundraisers_detail where fundraisers_id ='"+fid+"'", new RowMapper<FundraiserModel>()
				
				{
					@Override
					public FundraiserModel mapRow(ResultSet rs, int arg1) throws SQLException {

						FundraiserModel fm = new FundraiserModel();
						fm.setFundraisers_id(rs.getString("fundraisers_id"));
						fm.setPersonal_email(rs.getString("personal_email"));
						fm.setPersonal_pan_no(rs.getString("personal_pan_no"));
						fm.setPersonal_aadhar_no(rs.getString("personal_aadhar_no"));
						return fm;
					}
				});
		
		return query6.get(0);
	}

	//Update fundraisers Details 
	
	public int UpdateUserDetails(String id, String email, String pan, String aadhar) 
	{
		String query7 = "update fundraisers_detail set personal_email='"+email+"', personal_pan_no='"+pan+"', personal_aadhar_no='"+aadhar+"' where fundraisers_id ='"+id+"'";
		return template.update(query7);
	}

	//campaign approve
	
	public int CampaignApprove(String cid) 
	{
		String query8 = "update campaign_details set fundraisers_status=1 where campaign_id ='"+cid+"'";
		return template.update(query8);
	}
	
	//campaign disapprove
	
		public int CampaignDisapprove(String cid) 
		{
			String query9 = "update campaign_details set fundraisers_status=0 where campaign_id ='"+cid+"'";
			return template.update(query9);
		}
		
		//campaign approve
		
		public int CampaignSuccess(String cid) 
		{
			String query10 = "update campaign_details set fundraisers_status=2 where campaign_id ='"+cid+"'";
			return template.update(query10);
		}
		
		//Update Fetch fundraisers details 

		public FundraiserModel FetchFundraisersDetails(String fid)
		{
			List<FundraiserModel> query11 = template.query("select * from fundraisers_detail where fundraisers_id ='"+fid+"'", new RowMapper<FundraiserModel>()
					
					{
						@Override
						public FundraiserModel mapRow(ResultSet rs, int arg1) throws SQLException {

							FundraiserModel fm = new FundraiserModel();
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
							fm.setPersonal_updated_date(rs.getString("personal_updated_date"));
							fm.setPersonal_status(rs.getString("personal_status"));
					
							return fm;
						}
					});
			
			return query11.get(0);
		}




		//Update Fetch fundraisers details 

			public CampaignsModel FetchCampaignDetails(String cid)
				{
				
					List<CampaignsModel> query12 = template.query("select * from campaign_details where campaign_id ='"+cid+"'", new RowMapper<CampaignsModel>()
							
							{
								@Override
								public CampaignsModel mapRow(ResultSet rs, int arg1) throws SQLException {

									CampaignsModel cm = new CampaignsModel();
									
									cm.setCampaign_id(rs.getString("campaign_id"));
									cm.setFundraisers_id(rs.getString("fundraisers_id"));
									cm.setFundraisers_title(rs.getString("fundraisers_title"));
									cm.setFundraisers_goal_amount(rs.getString("fundraisers_goal_amount"));
									cm.setFundraisers_raised_amount(rs.getString("fundraisers_raised_amount"));
									cm.setFundraisers_donor_list(rs.getString("fundraisers_donor_list"));
									cm.setFundraisers_name(rs.getString("fundraisers_name"));
									cm.setFundraisers_contact(rs.getString("fundraisers_contact"));
									cm.setFundraisers_email(rs.getString("fundraisers_email"));
									cm.setFundraisers_beneficiary_relation(rs.getString("fundraisers_beneficiary_relation"));
									cm.setFundraisers_story(rs.getString("fundraisers_story"));
									cm.setfundraisers_start_date(rs.getString("fundraisers_start_date"));
									cm.setFundraisers_end_date(rs.getString("fundraisers_end_date"));
									cm.setFundraisers_created_date(rs.getString("fundraisers_created_date"));
									cm.setFundraisers_profile_image(rs.getString("fundraisers_profile_image"));
									cm.setFundraisers_upi_image(rs.getString("fundraisers_upi_image"));
									cm.setFundraisers_upi_number(rs.getString("fundraisers_upi_number"));
									cm.setFundraisers_campaign_images(rs.getString("fundraisers_campaign_images"));
									cm.setFundraisers_campaign_documents(rs.getString("fundraisers_campaign_documents"));
									cm.setFundraisers_campaign_updated_date(rs.getString("fundraisers_campaign_updated_date"));
									cm.setFundraisers_status(rs.getString("fundraisers_status"));
									
									return cm;
									
								}
							});
					
					return query12.get(0);
				}

}
