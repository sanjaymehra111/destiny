package com.destiny.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.destiny.model.AdminLoginModel;
import com.destiny.model.UserLoginModel;


@Repository
public class AdminLoginDaoimpl 
{
	@Autowired
	JdbcTemplate template;
	
	public List<AdminLoginModel> checkAdminLogin(AdminLoginModel alm)
	{
		String sql1= "select * from admin_details where admin_id = '"+alm.getAdmin_id()+"' and admin_password = '"+alm.getAdmin_password()+"'";
		List<AdminLoginModel> datas = template.query(sql1, new AdminLoginModelMapper());
		
		if (datas.size() > 0)
		{
			return datas;
		}
		else 
		{
			return null;
		}
		
	}
	
}


 class AdminLoginModelMapper implements RowMapper<AdminLoginModel>
 {
	 @Override
		public AdminLoginModel mapRow(ResultSet rs, int rowNum) throws SQLException {
			// TODO Auto-generated method stub
			
		 	AdminLoginModel alm = new AdminLoginModel();
			alm.setA_id(rs.getString("a_id"));
			return alm;
		}
	 
 }
