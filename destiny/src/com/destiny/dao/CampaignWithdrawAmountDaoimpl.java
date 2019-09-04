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

import com.destiny.model.CampaignAccountModel;
import com.destiny.model.CampaignWithdrawAmountModel;

@Repository
public class CampaignWithdrawAmountDaoimpl 
{
	@Autowired
	JdbcTemplate template;
	
	String date = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
	
	public int CampaignWithdrawRequest(CampaignWithdrawAmountModel cwam)
	{
		String sql1 = "insert into campaign_withdraw_request (fundraisers_id, campaign_id, withdraw_amount, request_date, campaign_title)"
				+ "values('"+cwam.getFundraisers_id()+"', '"+cwam.getCampaign_id()+"', '"+cwam.getWithdraw_amount()+"', '"+date+"', '"+cwam.getCampaign_title()+"')";
		
		return template.update(sql1);
	}
	
	
	public List<CampaignWithdrawAmountModel> FetchWithdrawRequest(String camp_id)
	{
		
		List<CampaignWithdrawAmountModel> query1 = template.query("SELECT * FROM campaign_withdraw_request WHERE campaign_id = '"+camp_id+"' ORDER BY request_date DESC", new RowMapper<CampaignWithdrawAmountModel>()
				{

					@Override
					public CampaignWithdrawAmountModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub
						
						CampaignWithdrawAmountModel cwam = new CampaignWithdrawAmountModel();
						cwam.setCampaign_id(rs.getString("campaign_id"));
						cwam.setFundraisers_id(rs.getString("fundraisers_id"));
						cwam.setCampaign_id(rs.getString("campaign_id"));
						cwam.setWithdraw_amount(rs.getString("withdraw_amount"));
						cwam.setBalance_amount(rs.getString("balance_amount"));
						cwam.setRequest_date(rs.getString("request_date"));
						cwam.setCampaign_title(rs.getString("campaign_title"));
						cwam.setWithdraw_status(rs.getString("withdraw_status"));
						
						return cwam;
					}
			
				}
				);
		return query1;
	}

}
