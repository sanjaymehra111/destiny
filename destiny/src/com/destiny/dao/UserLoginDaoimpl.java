package com.destiny.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.destiny.model.UserLoginModel;


@Repository
public class UserLoginDaoimpl 
{
	@Autowired
	JdbcTemplate template;

/*
	public String checkLogin(String user_id, String user_password)
	{
		String sql1="Select fundraisers_id from fundraisers_details where personal_email = ? and personal_password = ?";
		String f_id=template.queryForObject(sql1, new Object[] {user_id, user_password}, String.class);
		
		//System.out.println("UserDao : " + f_id);
		return f_id;
	}
	*/
	
	public List<UserLoginModel> checkLogin(UserLoginModel ulm)
	{
		String sql1="Select fundraisers_id from fundraisers_details where personal_email = '"+ulm.getUser_id()+"' and personal_password = '"+ulm.getUser_password()+"'";
		List<UserLoginModel> users=template.query(sql1, new UserLoginModelMapper());
		
		
		//String f_id=template.queryForObject(sql1, String.class);
		//System.out.println("size of String is : " + users.size());
		//System.out.println("size of String is : " + f_id);
		
		if (users.size() > 0)
		{
			return users;
		}
		else 
		{
			return null;
		}
	}


}

class UserLoginModelMapper implements RowMapper<UserLoginModel>
{

	@Override
	public UserLoginModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		
		UserLoginModel ulm = new UserLoginModel();
		ulm.setfundraisers_id(rs.getString("fundraisers_id"));
		System.out.println("getting fid in dao is = " + ulm.getfundraisers_id());
		
		return ulm;
	}
	
	
}

/*
	
	public List<UserLoginModel> checkLogin(String user_id, String user_password)
	
	{
		
				
		String sql1="Select fundraisers_id from fundraisers_details where personal_email = ? and personal_password = ?";
		
		String f_id=template.queryForObject(sql1, new Object[] {user_id, user_password}, String.class);
		
		System.out.println("dao return f_id : " + f_id);
		
		int ls = List.size();
		
		
		
		//System.out.println("fid of data is= "+ daodata.getfundraisers_id());
		//String id=ulm.getfundraisers_id();
		
		
		
		
	}
	
	
}
	*/
/*

	
public List<UserLoginModel> save(UserLoginModel ulm)
{
	
	String sql1="Select fundraisers_id from fundraisers_details where personal_email = '"+ulm.getUser_id()+"' and personal_password = '"+ulm.getUser_password()+"'";
			
//System.out.println("DAO Data From Controller");
//System.out.println(ulm.getUser_id() + "" + ulm.getUser_password());
	
	List<UserLoginModel> data= template.query(sql1, new RowMapper<UserLoginModel>()
			{

				@Override
				public UserLoginModel mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					
					UserLoginModel ulm = new UserLoginModel(); 
					
					ulm.setfundraisers_id(rs.getString("fundraisers_id"));
					
					String fid = ulm.getfundraisers_id();
					System.out.println("Dao fndraisers id=" + fid );
					
					//System.out.println();
					
					return ulm;
				
				}
		
			}
			);
	//System.out.println("data1="+data1);
	
	return data;

}

}
*/
