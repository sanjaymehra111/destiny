package com.destiny.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.destiny.model.CampaignAccountModel;

@Repository
public class CampaignAccountDaoimpl 
{
	@Autowired
	JdbcTemplate template;
	
	public int CampaignAccountDetails(CampaignAccountModel cam, String pan, String cheque, String doc)
	{
		String sql = "insert into campaign_account_details (fundraisers_id, campaign_id, account_type, account_holder_name, account_number, account_ifsc, account_swift, account_bank_name, pan_image, cancel_cheque_image, doc_files)"
				+ "values('"+cam.getFundraisers_id()+"', '"+cam.getCampaign_id()+"', '"+cam.getAccount_type()+"', '"+cam.getAccount_holder_name()+"', '"+cam.getAccount_number()+"', '"+cam.getAccount_ifsc()+"', '"+cam.getAccount_swift()+"', '"+cam.getAccount_bank_name()+"', '"+"/destiny/files/campaign-account-images/"+pan+"', '"+"/destiny/files/campaign-account-images/"+cheque+"', '"+"/destiny/files/campaign-account-images/"+doc+"')";
	
		return template.update(sql);
	}
	
	
	
	public List<CampaignAccountModel> FetchCampaignAccount(String camp_id)
	{
		
		List<CampaignAccountModel> query1 = template.query("select * from campaign_account_details where campaign_id = '"+camp_id+"'", new RowMapper<CampaignAccountModel>()
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
			
				}
				);
		return query1;
	}
	
	
	public int DeleteCampaignAccount(String camp_id, String fund_id)
	{
		String sql5 = "Delete from campaign_account_details where campaign_id = '"+camp_id+"' and fundraisers_id = '"+fund_id+"'";
		return template.update(sql5);
	}
	
}
