package com.destiny.dao;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.destiny.model.VolunteerModel;

@Repository
public class VolunteerDaoimpl 
{
	@Autowired
	JdbcTemplate template;
	
	String date = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());

	public int UpdateVolunteer(VolunteerModel vm)
	{
		String query1 = "insert into volunteer_details (volunteer_name, volunteer_contact, volunteer_email, volunteer_message, volunteer_joining_date)"
			+"values('"+vm.getVolunteer_name()+"',  '"+vm.getVolunteer_contact()+"',  '"+vm.getVolunteer_email()+"',  '"+vm.getVolunteer_message()+"', '"+date+"')";
	
		return template.update(query1);
	}
	
	
}
