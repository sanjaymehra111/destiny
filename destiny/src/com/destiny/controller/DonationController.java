package com.destiny.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.destiny.dao.BrowseFundraiserDaoimpl;
import com.destiny.dao.DonationDaoimpl;
import com.destiny.model.DonationModel;
import com.destiny.model.SessionModel;

@Controller
public class DonationController 
{
	@Autowired
	DonationDaoimpl dmdao = new DonationDaoimpl();
	
	@Autowired
	BrowseFundraiserDaoimpl fmdao2;
	
	@Autowired
	BrowseFundraiserDaoimpl bfdao;

	
	@RequestMapping("/new_donation") 
	public String donation(@ModelAttribute("donation_model")DonationModel dm, Model model, HttpSession session)
	{
		SessionModel sesmodel = (SessionModel) session.getAttribute("sessionData");
		
		dmdao.save(dm);

		//update sum of donation amount details in campaign.fundraisers_raised_amount
		fmdao2.fetchDonationDetails();
		
		//update donor list
		bfdao.fetchDonorList();
		
		if (sesmodel == null)
			return "redirect:/index";
		else
			return "redirect:/user-dashboard";
	}
}
