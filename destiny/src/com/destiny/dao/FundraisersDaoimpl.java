package com.destiny.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.destiny.model.FundraisersModel;

@Repository
public class FundraisersDaoimpl 
{

	@Autowired
	JdbcTemplate template = new JdbcTemplate();
	
	public int save(FundraisersModel fm)
	{
		String sql = "insert into fundraisers_details(category_type, personal_name, personal_email, personal_number, personal_city, fundraisers_title, fundraisers_goal_amount, fundraisers_name, fundraisers_contact, fundraisers_email, fundraisers_beneficiary_relaion, fundraisers_story)"
				+ "values('"+fm.getCategory_type()+"', '"+fm.getPersonal_name()+"', '"+fm.getPersonal_email()+"', '"+fm.getPersonal_number()+"', '"+fm.getPersonal_city()+"', '"+fm.getFundraisers_title()+"', '"+fm.getFundraisers_goal_amount()+"', '"+fm.getFundraisers_name()+"', '"+fm.getFundraisers_contact()+"', '"+fm.getFundraisers_email()+"', '"+fm.getFundraisers_beneficiary_relation()+"', '"+fm.getFundraisers_story()+"')";

		return template.update(sql);	
	}
	

	public String fetchData(String personal_name, String personal_email)
	{
		String sql1="Select fundraisers_id from fundraisers_details where personal_name = ? and personal_email = ?";
		String f_id=template.queryForObject(sql1, new Object[] {personal_name, personal_email}, String.class);
		
		//System.out.println("UserDao : " + f_id);
		return f_id;
	}
	
	/*
	public String fetch()
	{
		String sql1="Select * from fundraisers_details";
		String f_id=template.queryForObject(sql1, String.class);
		
		System.out.println("UserDao : " + f_id);
		return f_id;
	}
	*/
	/*
	public List<FundraisersModel> fetch1()
	{
		List<FundraisersModel> query2 = template.query("select * from fundraisers_details", new RowMapper<FundraisersModel>()
				
				{

					@Override
					public FundraisersModel mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub

						FundraisersModel fm= new FundraisersModel();
						fm.setFundraisers_id(rs.getString("fundraisers_id"));
						fm.setCategory_type(rs.getString("category_type"));
						fm.setPersonal_name(rs.getString("personal_name"));
						fm.setPersonal_email(rs.getString("personal_email"));
						fm.setPersonal_number(rs.getString("personal_number"));
						fm.setPersonal_city(rs.getString("personal_city"));
						fm.setFundraisers_title(rs.getString("fundraisers_title"));
						fm.setFundraisers_goal_amount(rs.getString("fundraisers_goal_amount"));
						fm.setFundraisers_name(rs.getString("fundraisers_name"));
						fm.setFundraisers_contact(rs.getString("fundraisers_contact"));
						fm.setFundraisers_email(rs.getString("fundraisers_email"));
						fm.setFundraisers_beneficiary_relaion(rs.getString("fundraisers_beneficiary_relaion"));
						fm.setFundraisers_story(rs.getString("fundraisers_story"));
						
						
						return fm;
					}
			
				});
		return query2;
}
*/
}
