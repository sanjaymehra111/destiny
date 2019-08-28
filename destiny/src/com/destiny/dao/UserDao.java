package com.destiny.dao;

import java.util.List;

import com.destiny.model.zzz_FundraisersModel_old;

public interface UserDao 
{
	public int save(zzz_FundraisersModel_old fm);
	public List<zzz_FundraisersModel_old> fatch();
}
