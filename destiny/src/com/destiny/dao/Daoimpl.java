package com.destiny.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.destiny.model.StoreModel;

@Repository
public class Daoimpl implements Dao
{

	@Autowired
	JdbcTemplate template = new JdbcTemplate();
	
	
	public int save(StoreModel sm){    
	    String sql="insert into firstpage (name, contact) values('"+sm.getName()+"','"+sm.getContact()+"')";    
	    return template.update(sql);    
	}
	
	public List<StoreModel> fetch()
	{
		List<StoreModel> datas = template.query("select * from firstpage", new RowMapper<StoreModel>() 
		{

			@Override
			public StoreModel mapRow(ResultSet rs, int rowNum) throws SQLException 
			{
				// TODO Auto-generated method stub
				StoreModel sm = new StoreModel();
				
				sm.setName(rs.getString("name"));
				sm.setContact(rs.getString("contact"));
				
				return sm;
			}
			
		});
		return datas;
		
	}

}
