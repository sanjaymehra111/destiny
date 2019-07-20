package com.destiny.dao;

import java.util.List;

import com.destiny.model.DonationModel;

public interface DonationDao 
{
	
	public int save(DonationModel dm);
	public List<DonationModel> fetch();

}
