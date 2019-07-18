package com.destiny.dao;

import java.util.List;

import com.destiny.model.StoreModel;

public interface Dao 
{
	public int save(StoreModel sm);
	public List<StoreModel> fetch();
	
}
