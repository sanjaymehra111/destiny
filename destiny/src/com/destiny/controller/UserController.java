package com.destiny.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.destiny.dao.FundraisersDaoimpl;
import com.destiny.model.FundraisersModel;

@Controller
public class UserController 
{
	@Autowired
	FundraisersDaoimpl fmdao = new FundraisersDaoimpl();
	
	@RequestMapping("/new_fundraisers")
	public String new_fundraisers(@ModelAttribute("new_fundraisers_model")FundraisersModel fm, Model model)
	{
		System.out.println(fm.toString());
		fmdao.save(fm);
		
		return "start-a-fundraisers";
		
	}
	

}
