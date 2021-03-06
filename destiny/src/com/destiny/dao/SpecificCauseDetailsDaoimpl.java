package com.destiny.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.xml.crypto.Data;

import org.apache.tomcat.util.descriptor.tld.TldRuleSet.Variable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.destiny.model.CampaignsModel;
import com.destiny.model.DonationModel;
import com.destiny.model.FundraiserModel;
import com.destiny.model.UserUpdateModel;

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
						cm.setFundraisers_status(rs.getString("fundraisers_status"));
						cm.setFundraisers_profile_image(rs.getString("fundraisers_profile_image"));
						cm.setFundraisers_upi_image(rs.getString("fundraisers_upi_image"));
						cm.setFundraisers_upi_number(rs.getString("fundraisers_upi_number"));
						cm.setFundraisers_campaign_images(rs.getString("fundraisers_campaign_images"));
						cm.setFundraisers_campaign_documents(rs.getString("fundraisers_campaign_documents"));
						
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
						
						return cm;
					}
			
				}
				);
		return query2;
	}
	
	
	//fetch donor list

	public List<DonationModel> FetchDonorDetails(String camp_id)
	{
		
		List<DonationModel> query1 = template.query("SELECT * FROM donation_details WHERE campaign_id = '"+camp_id+"'", new RowMapper<DonationModel>()
				{

					@Override
					public DonationModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub
						
						DonationModel dm = new DonationModel();
						
						dm.setDonor_id(rs.getString("donor_id"));
						dm.setCampaign_id(rs.getString("campaign_id"));
						dm.setDonor_name(rs.getString("donor_name"));
						dm.setDonor_contact(rs.getString("donor_contact"));
						dm.setDonor_email(rs.getString("donor_email"));
						dm.setDonor_address(rs.getString("donor_address"));
						dm.setDonor_city(rs.getString("donor_city"));
						dm.setDonor_country(rs.getString("donor_country"));
						dm.setDonor_message(rs.getString("donor_message"));
						dm.setAmount_type(rs.getString("amount_type"));
						dm.setAmount(rs.getString("amount"));
						dm.setDonation_date(rs.getString("donation_date"));
						
						return dm;
					}
			
				}
				);
		if(query1.size() > 0)
		return query1;
		
		else return null;
	}
	
	
	
	

	//check user Password
	
	public CampaignsModel fetchCampaignsImages(String camp_id)
	{
		String sql4 = "select fundraisers_campaign_images from campaign_details where campaign_id = '"+camp_id+"'";
		List<CampaignsModel> data3= template.query(sql4, new CampaignsModelMapper());
		
		
		return data3.get(0);
	}
	
	public int deleteCampaign(String camp_id, String fund_id)
	{
		String sql5 = "Delete from campaign_details where campaign_id = '"+camp_id+"' and fundraisers_id = '"+fund_id+"'";
		return template.update(sql5);
	}
	
	
class CampaignsModelMapper implements RowMapper<CampaignsModel>
{

	@Override
	public CampaignsModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		CampaignsModel cm = new CampaignsModel();
		cm.setFundraisers_campaign_images(rs.getString("fundraisers_campaign_images"));
		return cm;
	}
	
}

}