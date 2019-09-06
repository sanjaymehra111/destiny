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
import com.destiny.model.CampaignAccountModel;
import com.destiny.model.CampaignWithdrawAmountModel;
import com.destiny.model.CampaignsModel;
import com.destiny.model.DonationModel;
import com.destiny.model.FundraiserModel;
import com.destiny.model.VolunteerModel;

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
	
	
	//Get volunteer Quantit
	
		public AdminLoginModel VolunteerQuantity()
		{
			List<AdminLoginModel> query16 = template.query("SELECT COUNT(volunteer_id) FROM volunteer_details", new RowMapper<AdminLoginModel>()
					{
						@Override
						public AdminLoginModel mapRow(ResultSet rs, int arg1) throws SQLException {
							AdminLoginModel alm = new AdminLoginModel();
							alm.setVolunteer_qty(rs.getString("count(volunteer_id)"));
							
							return alm;
						}
					});
			return query16.get(0);
		}
		
		//Get volunteer Quantit
		
			public AdminLoginModel WithdrawRequestQuantity()
			{
				List<AdminLoginModel> query19 = template.query("SELECT COUNT(withdraw_id) FROM campaign_withdraw_request", new RowMapper<AdminLoginModel>()
						{
							@Override
							public AdminLoginModel mapRow(ResultSet rs, int arg1) throws SQLException {
								AdminLoginModel alm = new AdminLoginModel();
								alm.setWithdraw_request_qty(rs.getString("count(withdraw_id)"));
								
								return alm;
							}
						});
				return query19.get(0);
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
							cm.setCampaign_type(rs.getString("campaign_type"));
							cm.setFundraisers_title(rs.getString("fundraisers_title"));
							cm.setFundraisers_goal_amount(rs.getString("fundraisers_goal_amount"));
							cm.setFundraisers_raised_amount(rs.getString("fundraisers_raised_amount"));
							cm.setFundraisers_withdraw_amount(rs.getString("fundraisers_withdraw_amount"));
							cm.setFundraisers_balance_amount(rs.getString("fundraisers_balance_amount"));
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
							cm.setFundraisers_campaign_success_date(rs.getString("fundraisers_campaign_success_date"));
							cm.setFundraisers_status(rs.getString("fundraisers_status"));
							
							return cm;
						}
					});
			return query3;
		}
	
		
		//Get fundraisers Details
		
			public List<VolunteerModel> FetchVolunteer()
			{
				List<VolunteerModel> query14 = template.query("SELECT * FROM volunteer_details", new RowMapper<VolunteerModel>()
						{

							@Override
							public VolunteerModel mapRow(ResultSet rs, int arg1) throws SQLException {
								VolunteerModel vm = new VolunteerModel();
								vm.setVolunteer_id(rs.getString("volunteer_id"));
								vm.setVolunteer_name(rs.getString("volunteer_name"));
								vm.setVolunteer_contact(rs.getString("volunteer_contact"));
								vm.setVolunteer_email(rs.getString("volunteer_email"));
								vm.setVolunteer_message(rs.getString("volunteer_message"));
								vm.setVolunteer_joining_date(rs.getString("volunteer_joining_date"));
								vm.setVolunteer_status(rs.getString("volunteer_status"));
								
								return vm;
							}
						});
				return query14;
			}
		
	
			
			//Get withdraw request Details
			
			public List<CampaignWithdrawAmountModel> FetchWithdrawRequest()
			{
				List<CampaignWithdrawAmountModel> query14 = template.query("SELECT * FROM campaign_withdraw_request", new RowMapper<CampaignWithdrawAmountModel>()
						{

							@Override
							public CampaignWithdrawAmountModel mapRow(ResultSet rs, int arg1) throws SQLException {
								CampaignWithdrawAmountModel cwam = new CampaignWithdrawAmountModel();
								
								cwam.setWithdraw_id(rs.getString("withdraw_id"));
								cwam.setCampaign_id(rs.getString("campaign_id"));
								cwam.setFundraisers_id(rs.getString("fundraisers_id"));
								cwam.setWithdraw_amount(rs.getString("withdraw_amount"));
								cwam.setBalance_amount(rs.getString("balance_amount"));
								cwam.setRequest_date(rs.getString("request_date"));
								cwam.setCampaign_title(rs.getString("campaign_title"));
								cwam.setWithdraw_status(rs.getString("withdraw_status"));
				
								return cwam;
							}
						});
				return query14;
			}
		
			
			//Get fundraisers Balance amount Details
			
			public CampaignsModel FetchFundraisersBalanceAmount(String id)
			{
				List<CampaignsModel> query14_1 = template.query("SELECT fundraisers_balance_amount FROM campaign_details where campaign_id ='"+id+"'", new RowMapper<CampaignsModel>()
						{

							@Override
							public CampaignsModel mapRow(ResultSet rs, int arg1) throws SQLException {
								CampaignsModel cm = new CampaignsModel();
								
								cm.setFundraisers_balance_amount(rs.getString("fundraisers_balance_amount"));
								return cm;
							}
						});
				if(query14_1.size() > 0)
				return query14_1.get(0);
				else
					return null;
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
			String query10 = "update campaign_details set fundraisers_campaign_success_date = '"+date+"', fundraisers_status=2 where campaign_id ='"+cid+"'";
			return template.update(query10);
		}
		
		//Fetch fundraisers details 

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




		//fetch campaign details 

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
									cm.setFundraisers_withdraw_amount(rs.getString("fundraisers_withdraw_amount"));
									cm.setFundraisers_balance_amount(rs.getString("fundraisers_balance_amount"));
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
			
			//Fetch Account details 
			
			public CampaignAccountModel FetchCampaignAccountDetails(String cid)
			{
				
				List<CampaignAccountModel> query13 = template.query("SELECT * FROM campaign_account_details WHERE campaign_id = '"+cid+"'", new RowMapper<CampaignAccountModel>()
						{

							@Override
							public CampaignAccountModel mapRow(ResultSet rs, int rowNum) throws SQLException {
								// TODO Auto-generated method stub
								
								CampaignAccountModel cam = new CampaignAccountModel();
								
								cam.setFundraisers_id(rs.getString("fundraisers_id"));
								cam.setCampaign_id(rs.getString("campaign_id"));
								cam.setAccount_type(rs.getString("account_type"));
								cam.setAccount_holder_name(rs.getString("account_holder_name"));
								cam.setAccount_number(rs.getString("account_number"));
								cam.setAccount_ifsc(rs.getString("account_ifsc"));
								cam.setAccount_swift(rs.getString("account_swift"));
								cam.setAccount_bank_name(rs.getString("account_bank_name"));
								cam.setPan_image(rs.getString("pan_image"));
								cam.setCancel_cheque_image(rs.getString("cancel_cheque_image"));
								cam.setdoc_files(rs.getString("doc_files"));
								
								return cam;
							}
						});
				
				if(query13.size() > 0)
				{
					return query13.get(0);	
				}
				
				else
				{
					return null;
				}
				
			}
			
			
			
			//Update unblock_user

			public int UpdateUnblockVolunteer(String id)
			{
				String query15 = "update volunteer_details set volunteer_status=1 where volunteer_id ='"+id+"'";
				return template.update(query15);
			}
			
			//Update block_user

			public int UpdateBlockVolunteer(String id)
			{
				String query16 = "update volunteer_details set volunteer_status=0 where volunteer_id ='"+id+"'";
				return template.update(query16);
			}
			
			

			//Update unblock_user

			public int UpdateUnblockWithdraw(String id)
			{
				String query17 = "update campaign_withdraw_request set approved_date = '"+date+"', withdraw_status=1 where withdraw_id ='"+id+"'";
				return template.update(query17);
			}
			
			//Update block_user

			public int UpdateBlockWithdraw(String id)
			{
				String query18 = "update campaign_withdraw_request set approved_date = '"+date+"', withdraw_status=0 where withdraw_id ='"+id+"'";
				return template.update(query18);
			}
			
			
			//Update balance amount
			public int UpdateBalanceAmount(String c_id)
			{
				
				String query20 = "UPDATE campaign_details SET fundraisers_balance_amount = IF (((SELECT SUM(amount) FROM donation_details WHERE campaign_id = '"+c_id+"' ) - (SELECT SUM(withdraw_amount) FROM campaign_withdraw_request WHERE withdraw_status = 1 AND campaign_id = '"+c_id+"')) IS NULL, (SELECT SUM(amount) FROM donation_details WHERE campaign_id = '"+c_id+"'), ((SELECT SUM(amount) FROM donation_details WHERE campaign_id = '"+c_id+"' ) - (SELECT SUM(withdraw_amount) FROM campaign_withdraw_request WHERE withdraw_status = 1 AND campaign_id = '"+c_id+"'))) WHERE campaign_id = '"+c_id+"'";
						
				//String query20 = "UPDATE campaign_details SET fundraisers_balance_amount = (CASE WHEN ((SELECT SUM(amount) FROM donation_details WHERE campaign_id = '"+c_id+"' ) - (SELECT SUM(withdraw_amount) FROM campaign_withdraw_request WHERE withdraw_status = 1 AND campaign_id = '"+c_id+"')) IS NULL THEN (SELECT SUM(amount) FROM donation_details WHERE campaign_id = '"+c_id+"') else  0 END) WHERE campaign_id = '"+c_id+"'";

				//String query20 = "UPDATE campaign_details SET fundraisers_balance_amount = ((SELECT SUM(amount) FROM donation_details WHERE campaign_id = '"+c_id+"' ) - (SELECT SUM(withdraw_amount) FROM campaign_withdraw_request WHERE withdraw_status = 1 AND campaign_id = '"+c_id+"')) WHERE campaign_id = '"+c_id+"' ";
				//String query21 = "UPDATE campaign_withdraw_request SET balance_amount = ((SELECT SUM(amount) FROM donation_details WHERE campaign_id = '"+id+"' ) - (SELECT SUM(withdraw_amount) FROM campaign_withdraw_request WHERE withdraw_status = 1 AND campaign_id = '"+id+"')) WHERE campaign_id = '"+id+"' ";
			
				//String query20 = "update campaign_details set fundraisers_balance_amount='"+amount+"' where campaign_id='"+id+"'";
				//template.update(query21);
				return template.update(query20);
			}


			
			

}
