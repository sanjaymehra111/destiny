package com.destiny.model;

public class SessionModel 
{
	String session_id;
	String user_id;
	long time;

	public SessionModel(){
		
	}
	public SessionModel(String session_id, String user_id, long time) {
		super();
		this.session_id = session_id;
		this.user_id = user_id;
		this.time = time;
	}

	
	

	public String getSession_id() {
		return session_id;
	}




	public void setSession_id(String session_id) {
		this.session_id = session_id;
	}




	public String getUser_id() {
		return user_id;
	}




	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}




	public long getTime() {
		return time;
	}




	public void setTime(long time) {
		this.time = time;
	}




	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("SessionModel [session_id=").append(session_id).append(", user_id=").append(user_id)
				.append(", time=").append(time).append("]");
		return builder.toString();
	}
	
	
	
}
