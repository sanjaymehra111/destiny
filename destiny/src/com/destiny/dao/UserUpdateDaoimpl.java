package com.destiny.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.destiny.model.UserUpdateModel;

@Repository
public class UserUpdateDaoimpl 
{
	
	@Autowired
	JdbcTemplate template = new JdbcTemplate();

	//Update pan card number
	
	public int UpdatePan(UserUpdateModel uum)
	{
		String sql1 = "UPDATE fundraisers_detail SET personal_pan_no='"+uum.getPersonal_pan_no()+"' WHERE fundraisers_id='"+uum.getFundraisers_id()+"'";
		return template.update(sql1);
	}

	
	//Update aadhar card number
	
	public int UpdateAadhar(UserUpdateModel uum)
	{
		String sql2 = "UPDATE fundraisers_detail SET personal_aadhar_no='"+uum.getPersonal_aadhar_no()+"' WHERE fundraisers_id='"+uum.getFundraisers_id()+"'";
		return template.update(sql2);
	}
	
	//Update user Details  (Name, City, DOB)
	
	public int UpdateuserDetails(UserUpdateModel uum)
	{
		String sql3 = "UPDATE fundraisers_detail SET personal_name='"+uum.getPersonal_name()+"', personal_city='"+uum.getPersonal_city()+"', personal_dob='"+uum.getPersonal_dob()+"' WHERE fundraisers_id='"+uum.getFundraisers_id()+"'";
		return template.update(sql3);
	}
	
	
	//check user Password
	
	public UserUpdateModel checkUserPassword(String fid)
	{
		String sql4 = "select personal_password from fundraisers_detail where fundraisers_id  = '"+fid+"'";
		List<UserUpdateModel> pwd= template.query(sql4, new UserUpdateModelMapper());
		
		return pwd.get(0);
	}
	
 
	//Update user password

		public int updateUserPassword(UserUpdateModel uum, String fid)
		{
			String sql5 = "UPDATE fundraisers_detail SET personal_password='"+uum.getNew_password()+"' where fundraisers_id  = '"+fid+"'";
			return template.update(sql5);
		}

	
}

	
	
	
class UserUpdateModelMapper implements RowMapper<UserUpdateModel>
{

	@Override
	public UserUpdateModel mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		UserUpdateModel uum = new UserUpdateModel();
		uum.setOld_password(rs.getString("personal_password"));
		return uum;
	}
}


