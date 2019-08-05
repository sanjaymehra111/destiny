package com.destiny.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.destiny.dao.BrowseFundraiserDaoimpl;
import com.destiny.dao.FundraiserDaoimpl;
import com.destiny.dao.FundraisersDaoimpl;
import com.destiny.dao.SpecificCauseDetailsDaoimpl;
import com.destiny.model.CampaignsModel;
import com.destiny.model.FundraiserModel;
import com.destiny.model.SessionModel;

@Controller
public class UserRegisterController 
{
	@Autowired
	FundraisersDaoimpl fmdao;
	
	@Autowired
	BrowseFundraiserDaoimpl fmdao2;
	
	@Autowired
	SpecificCauseDetailsDaoimpl smdao;
	
	@Autowired
	FundraiserDaoimpl fdmdao;
	 
	
	@RequestMapping("/new_fundraisers")
	public String new_fundraisers(@ModelAttribute("new_fundraisers_model")FundraiserModel fm, CampaignsModel cm, Model model,
			HttpSession session, RedirectAttributes redirectAttributes)
	{
		//System.out.println("data is :" + cm);
		
		String f_id = String.valueOf(fdmdao.InserIntoFundraiser(fm));
		fdmdao.InserIntoCampaign(cm, fm);
		
		System.out.println("id in controller : " +  f_id);
		
		List<FundraiserModel> data2 = smdao.fetchFundraisersDetails(f_id);
		model.addAttribute("data2", data2);
		model.addAttribute("fm", fm);
		
		
		SessionModel sessionModel = new SessionModel();
		sessionModel.setUser_id(f_id);
		sessionModel.setSession_id(session.getId());
		sessionModel.setTime(session.getCreationTime());
		session.setAttribute("sessionData", sessionModel);
		  
		redirectAttributes.addFlashAttribute("fundraisers_id",f_id);
		redirectAttributes.addFlashAttribute("fundraiserModel",fm)	;	
		 
		//String s_fid = sessionModel.getUser_id();
		//redirectAttributes.addAttribute("s_fid", s_fid);
		
			return "redirect:/user-dashboard";
		
	}
	
	//Store data in database
	/*
	@RequestMapping("/new_fundraisers")
	public String new_fundraisers(@ModelAttribute("new_fundraisers_model")FundraiserModel fm, Model model)
	{
		fmdao.save(fm);
		fetchdetails(fm, model);
		
		return "dashboard/user/user-dashboard";
		
	}
	*/
	
//	
//	public void fetchdetails(@ModelAttribute("new_fundraisers_model")FundraiserModel fm, Model model)
//	{
//		String f_id = fmdao.fetchData(fm.getPersonal_name(), fm.getPersonal_email());
//		System.out.println("fid data = " + f_id);
//		smdao.fetch(f_id);
//		List<FundraiserModel> data2 = smdao.fetch(f_id);
//		model.addAttribute("data2", data2);
//		model.addAttribute("fm", fm);
//		System.out.println("fetch data of fundraisers details is:" + data2);
//	}
//	

	
	//Fetch campaign and fundraisers details from database and show all campaign on browse fundraisers page
	
	@RequestMapping("/browse-a-fundraisers")
	public String browse_a_fundraisers(FundraiserModel fm, Model model, CampaignsModel cm)
	{
		List<FundraiserModel> data = fmdao2.fetchFundraisersDetails();
		List<CampaignsModel> data2 = fmdao2.fetchCampaignsDetails();
	
		model.addAttribute("data", data);
		model.addAttribute("data2", data2);
		model.addAttribute("fm", fm);
		model.addAttribute("cm", cm);
 		
		
		return "browse-a-fundraisers";
	}
	
	//Fetch Data from database and show specific campaign details
	
	@RequestMapping("/specific-cause-details/{fund_id}/{camp_id}")
	public String cause_details(@PathVariable("fund_id") String fund_id, @PathVariable("camp_id") String camp_id, FundraiserModel fm, CampaignsModel cm, Model model )
	{
		//System.out.println(camp_id);
		
		List<FundraiserModel> data3 = smdao.fetchFundraisersDetails(fund_id);
		List<CampaignsModel> data4 = smdao.fetchCampaignsDetails(camp_id);
	
		model.addAttribute("data3", data3);
		model.addAttribute("data4", data4);
		model.addAttribute("fm", fm);
		model.addAttribute("cm", cm);
 		
		
		return "specific-cause-details";	 
		  
	}
	 
}

