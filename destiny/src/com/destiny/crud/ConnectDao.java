package com.destiny.crud;

import org.springframework.jdbc.core.JdbcTemplate;

public class ConnectDao 
{
	
	public JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	

}
