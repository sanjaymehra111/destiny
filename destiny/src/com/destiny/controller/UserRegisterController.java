package com.destiny.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.destiny.dao.BrowseFundraisersDaoimpl;
import com.destiny.dao.FundraiserDaoimpl;
import com.destiny.dao.FundraisersDaoimpl;
import com.destiny.dao.SpecificCauseDetailsDaoimpl;
import com.destiny.dao.UserLoginDaoimpl;
import com.destiny.model.CampaignsModel.CampaignModel;
import com.destiny.model.FundraiserModel;
import com.destiny.model.FundraisersModel;

@Controller
public class UserRegisterController 
{
	@Autowired
	FundraisersDaoimpl fmdao;
	
	@Autowired
	BrowseFundraisersDaoimpl fmdao2;
	
	@Autowired
	SpecificCauseDetailsDaoimpl smdao;
	
	@Autowired
	FundraiserDaoimpl fdmdao;
	
	
	@RequestMapping("/new_fundraisers")
	public String new_fundraisers(@ModelAttribute("new_fundraisers_model")FundraisersModel fm,  Model model)
	{
		
		fdmdao.save(fm);
		
		return "dashboard/user/user-dashboard";
		
	}
	
	//Store data in database
	/*
	@RequestMapping("/new_fundraisers")
	public String new_fundraisers(@ModelAttribute("new_fundraisers_model")FundraisersModel fm, Model model)
	{
		fmdao.save(fm);
		fetchdetails(fm, model);
		
		return "dashboard/user/user-dashboard";
		
	}
	*/
	public void fetchdetails(@ModelAttribute("new_fundraisers_model")FundraisersModel fm, Model model)
	{
		String f_id = fmdao.fetchData(fm.getPersonal_name(), fm.getPersonal_email());
		System.out.println("fid data = " + f_id);
		smdao.fetch(f_id);
		List<FundraisersModel> data2 = smdao.fetch(f_id);
		model.addAttribute("data2", data2);
		model.addAttribute("fm", fm);
		System.out.println("fetch data of fundraisers details is:" + data2);
	}
	

	
	//Fetch Data from database and show all campaign on browse fundraisers page
	
	@RequestMapping("/browse-a-fundraisers")
	public String browse_a_fundraisers(FundraisersModel fm, Model model)
	{
		//Fetch Data
		
		List<FundraisersModel> data = fmdao2.fetch();
		model.addAttribute("data", data);
		
		model.addAttribute("fundraisers_id", fm.getFundraisers_id());
		model.addAttribute("fundraisers_title", fm.getFundraisers_title());
		model.addAttribute("fundraisers_goal_amount", fm.getFundraisers_goal_amount());
		model.addAttribute("fundraisers_story", fm.getFundraisers_story());
		model.addAttribute("message", "DATA STORED SUUCESSFULLY");
		
		return "browse-a-fundraisers";
	}
	
	
	//Fetch Data from database and show specific campaign details
	
	@RequestMapping("/cause-details/{camp_id}")
	public String cause_details(@PathVariable("camp_id") String camp_id, FundraisersModel fm, Model model )
	{
		//System.out.println(camp_id);
		
		List<FundraisersModel> data2 = smdao.fetch(camp_id);
		model.addAttribute("data2", data2);
		
		model.addAttribute("fundraisers_id", fm.getFundraisers_id());
		model.addAttribute("fundraisers_title", fm.getFundraisers_title());
		model.addAttribute("fundraisers_goal_amount", fm.getFundraisers_goal_amount());
		model.addAttribute("fundraisers_story", fm.getFundraisers_story());
		model.addAttribute("personal_name", fm.getPersonal_name());
		model.addAttribute("personal_city", fm.getPersonal_city());
		model.addAttribute("category_type", fm.getCategory_type());
		model.addAttribute("fundraisers_name", fm.getFundraisers_name());
		
		return "cause-details";
		  
	}
	 
}

