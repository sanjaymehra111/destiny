package com.destiny.model;

public class StoreModel 
{
	String name;
	String Contact;
	
	
	public StoreModel()
	{
		
	}
	
	public StoreModel(String name, String contact) {
		super();
		this.name = name;
		Contact = contact;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContact() {
		return Contact;
	}
	public void setContact(String contact) {
		Contact = contact;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("StoreModel [name=").append(name).append(", Contact=").append(Contact).append("]");
		return builder.toString();
	}
	
	

}
