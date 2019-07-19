package com.destiny.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.destiny.dao.BrowseFundraisersDaoimpl;
import com.destiny.dao.FundraisersDaoimpl;
import com.destiny.model.FundraisersModel;

@Controller
public class UserController 
{
	@Autowired
	FundraisersDaoimpl fmdao = new FundraisersDaoimpl();
	
	@Autowired
	BrowseFundraisersDaoimpl fmdao2 = new BrowseFundraisersDaoimpl ();
	
	//Store data in database
	
	@RequestMapping("/new_fundraisers")
	public String new_fundraisers(@ModelAttribute("new_fundraisers_model")FundraisersModel fm, Model model)
	{
		System.out.println(fm.toString());
		fmdao.save(fm);
		return "start-a-fundraisers";
		
	}
	
	//Fetch Data from database and show on browse fundraisers page
	
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
		
		System.out.println("done");
		System.out.println(data);
		return "browse-a-fundraisers";
	}
	
	
	//Fetch Data from database and show specific campaign details
	
	@RequestMapping("/cause-details/camp_id")
	public String cause_details(FundraisersModel fm, Model model)
	{
		return "cause-details";
		  
	}
	
	
		
	
   

}

