package com.destiny.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.destiny.model.AdminLoginModel;

@Repository
public class AdminDetailsDaoimpl 
{
	@Autowired
	JdbcTemplate template;
	
	public List<AdminLoginModel> FetchAdminDetails(String aid)
	{
		List<AdminLoginModel> query1 = template.query("select * from admin_details where a_id = '"+aid+"'", new RowMapper<AdminLoginModel>()
				{

					@Override
					public AdminLoginModel mapRow(ResultSet rs, int arg1) throws SQLException {
						// TODO Auto-generated method stub
						AdminLoginModel alm = new AdminLoginModel();
						alm.setA_id(rs.getString("a_id"));
						alm.setAdmin_id(rs.getString("admin_id"));
						alm.setAdmin_password(rs.getString("admin_password"));
						
						return alm;
					}
			
				}
				
				
		);
		return query1;
	}

}
