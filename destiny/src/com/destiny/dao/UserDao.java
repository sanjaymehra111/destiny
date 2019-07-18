package com.destiny.dao;

import java.util.List;

import com.destiny.model.FundraisersModel;

public interface UserDao 
{
	public int save(FundraisersModel fm);
	public List<FundraisersModel> fatch();
}
