package com.destiny.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.destiny.dao.DonationDaoimpl;
import com.destiny.model.DonationModel;

@Controller
public class DonationController 
{
	@Autowired
	DonationDaoimpl dmdao = new DonationDaoimpl(); 

	@RequestMapping("/new_donation") 
	public String donation(@ModelAttribute("donation_model")DonationModel dm, Model model)
	{
		//System.out.println("donation id :" +dm.toString());
		//System.out.println(dm.toString());
		dmdao.save(dm);
		 
		return "index";
	}
}
