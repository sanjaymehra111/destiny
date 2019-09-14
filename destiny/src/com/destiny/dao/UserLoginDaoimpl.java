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

import com.destiny.model.CampaignWithdrawAmountModel;
import com.destiny.model.UserLoginModel;


@Repository
public class UserLoginDaoimpl 
{
	@Autowired
	JdbcTemplate template;

	String date = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());


/*
	public String checkLogin(String user_id, String user_password)
	{
		String sql1="Select fundraisers_id from fundraisers_details where personal_email = ? and personal_password = ?";
		String f_id=template.queryForObject(sql1, new Object[] {user_id, user_password}, String.class);
		
		//System.out.println("UserDao : " + f_id);
		return f_id;
	}
	*/
	
	public UserLoginModel checkLogin(UserLoginModel ulm, String epwd)
	{
		String sql1="Select fundraisers_id from fundraisers_detail where personal_email = '"+ulm.getUser_id()+"' and personal_password = '"+epwd+"'";
		List<UserLoginModel> users=template.query(sql1, new UserLoginModelMapper());
		
		if (users.size() > 0)
		{
			return users.get(0);
		}
		else 
		{
			return null;
		}
	}
	
	public UserLoginModel UserStatus(String fid)
	{
		List<UserLoginModel> sql2 = template.query("Select personal_status from fundraisers_detail where fundraisers_id = '"+fid+"'", new RowMapper<UserLoginModel>()
				{

					@Override
					public UserLoginModel mapRow(ResultSet rs, int arg1) throws SQLException {
						UserLoginModel ulm = new UserLoginModel();
						ulm.setPersonal_status(rs.getString("personal_status"));
						return ulm;
					}
			
				}
		);
		return sql2.get(0);
		
	}

	public UserLoginModel CheckFacebookEmail(String email, String name, String profile, String birthday, String location)
	{
		String sql1="Select fundraisers_id from fundraisers_detail where personal_email = '"+email+"' ";
		List<UserLoginModel> mail =template.query(sql1, new UserLoginModelMapper());
		
		if (mail.size() > 0)
		{
			return mail.get(0);
		}
		else 
		{
				String sql = "insert into fundraisers_detail (personal_name, personal_email, personal_password, personal_dob, personal_city, personal_profile_image, personal_updated_date)"+ 
						"values('"+name+"', '"+email+"', '', '"+birthday+"', '"+location+"', '"+profile+"', '"+date+"')";

				template.update(sql);
				
				String sql12="Select fundraisers_id from fundraisers_detail where personal_email = '"+email+"' ";
				List<UserLoginModel> mail2 =template.query(sql12, new UserLoginModelMapper());
				
				return mail2.get(0);
		}
	}


		/*public UserLoginModel CreateFacebookId(String email, String name, String profile)
		{
			String sql = "insert into fundraisers_detail (personal_name, personal_email, personal_profile_image, personal_updated_date)"+ 
					"values('"+name+"', '"+email+"', '"+profile+"', '"+date+"')";

			template.update(sql);
			
			String sql12="Select fundraisers_id from fundraisers_detail where personal_email = '"+email+"' ";
			List<UserLoginModel> mail2 =template.query(sql12, new UserLoginModelMapper());
			
			return mail2.get(0);
		}*/
	


}

class UserLoginModelMapper implements RowMapper<UserLoginModel>
{
	@Override
	public UserLoginModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		UserLoginModel ulm = new UserLoginModel();
		ulm.setfundraisers_id(rs.getString("fundraisers_id"));
		return ulm;
	}
}