package com.destiny.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.destiny.dao.BrowseFundraiserDaoimpl;
import com.destiny.dao.CampaignAccountDaoimpl;
import com.destiny.dao.FundraiserDaoimpl;
import com.destiny.dao.FundraisersDaoimpl;
import com.destiny.dao.SpecificCauseDetailsDaoimpl;
import com.destiny.model.CampaignAccountModel;
import com.destiny.model.CampaignsModel;
import com.destiny.model.DonationModel;
import com.destiny.model.FundraiserModel;
import com.destiny.model.SessionModel;
import com.google.gson.Gson;

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

	@Autowired
	CampaignAccountDaoimpl camdao;

	@RequestMapping("/new_fundraisers")
	public String new_fundraisers(@ModelAttribute("new_fundraisers_model")FundraiserModel fm, CampaignsModel cm, Model model,
			HttpSession session, RedirectAttributes redirectAttributes)
	{
		//System.out.println("data is :" + cm);
		
		String f_id = String.valueOf(fdmdao.InserIntoFundraiser(fm));
		fdmdao.InserIntoCampaign(cm, fm);
		
		//System.out.println("id in controller : " +  f_id);
		
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
	
	
	//store campaign details after login
	
	@RequestMapping("/login_new_fundraisers")
	public String login_new_fundraisers(@ModelAttribute("new_fundraisers_model")CampaignsModel cm, Model model)
	{
		//System.out.println("data is :" + cm.toString());
		
	 FundraiserModel data =	fdmdao.FetchFundraisersType(cm.getFundraisers_id());
	 String type = data.getCategory_type();
		fdmdao.InserIntoLoginCampaign(cm, type);
		
		return "redirect:/user-dashboard";
		
	}
	
	
	//Fetch campaign and fundraisers details from database and show all campaign on browse fundraisers page
	
	@RequestMapping("/browse-a-fundraisers")
	public String browse_a_fundraisers(FundraiserModel fm, Model model, CampaignsModel cm, DonationModel dm)
	{
		/*//update sum of donation amount details in campaign.fundraisers_raised_amount
		fmdao2.fetchDonationDetails();

		int a = 20;
		List<FundraiserModel> data = fmdao2.fetchFundraisersDetails();
		List<CampaignsModel> data2 = fmdao2.FetchBrowseCampaignsDetails(a);
		
		model.addAttribute("data", data);
		model.addAttribute("data2", data2);
*/		
		return "browse-a-fundraisers";
	}
	
	@ResponseBody
	@RequestMapping("/ajax-browse-fundraisers")
	public String ajax_browse_fundraisers(int index)
	{	
		Gson gson = new Gson();
		//update sum of donation amount details in campaign.fundraisers_raised_amount
		fmdao2.fetchDonationDetails();

		//int a = 20;
		List<FundraiserModel> data1 = fmdao2.fetchFundraisersDetails();
		List<CampaignsModel> data2 = fmdao2.FetchBrowseCampaignsDetails(index);
		
		//System.out.println("campaign id is : " +dm.getCampaign_id()+  " AND  " + "amount is : " +dm.getAmount() );
		
		String fundraisers= gson.toJson(data1);
		String campaign= gson.toJson(data2);
		String data = "["+fundraisers+", "+campaign+"]";
		return data;
	}
	
	@RequestMapping("/successfull-stories")
	public String successfull_stories(FundraiserModel fm, Model model, CampaignsModel cm, DonationModel dm)
	{
		return "successfull-stories";
	}

	
	@ResponseBody
	@RequestMapping("/ajax-successfull-stories")
	public String ajax_successfull_stories(int index)
	{	
		Gson gson = new Gson();
		//update sum of donation amount details in campaign.fundraisers_raised_amount
		fmdao2.fetchDonationDetails();

		//int a = 20;
		List<FundraiserModel> data1 = fmdao2.fetchFundraisersDetails();
		List<CampaignsModel> data2 = fmdao2.FetchSuccessCampaignsDetails(index);
		
		//System.out.println("campaign id is : " +dm.getCampaign_id()+  " AND  " + "amount is : " +dm.getAmount() );
		
		String fundraisers= gson.toJson(data1);
		String campaign= gson.toJson(data2);
		String data = "["+fundraisers+", "+campaign+"]";
		return data;
	}
	
	
	
	
	
	//Fetch Data from database and show specific campaign details
	
	@RequestMapping("/specific-cause-details/{fund_id}/{camp_id}")
	public String cause_details(@PathVariable("fund_id") String fund_id, @PathVariable("camp_id") String camp_id, FundraiserModel fm, CampaignsModel cm, Model model )
	{
		//System.out.println(camp_id);
		
		List<FundraiserModel> data3 = smdao.fetchFundraisersDetails(fund_id);
		List<CampaignsModel> data4 = smdao.fetchCampaignsDetails(camp_id);
		List<CampaignAccountModel> data5 = camdao.FetchCampaignAccount(camp_id);
	
		model.addAttribute("data3", data3);
		model.addAttribute("data4", data4);
		model.addAttribute("data5", data5);
		
		
		return "specific-cause-details";	 
		  
	}
	
	
	//Fetch Data from database and show success campaign details
	
		@RequestMapping("/success-campaign/{fund_id}/{camp_id}")
		public String success_campaign(@PathVariable("fund_id") String fund_id, @PathVariable("camp_id") String camp_id, Model model )
		{
			//System.out.println(camp_id);
			
			List<FundraiserModel> data3 = smdao.fetchFundraisersDetails(fund_id);
			List<CampaignsModel> data4 = smdao.fetchCampaignsDetails(camp_id);
			List<CampaignAccountModel> data5 = camdao.FetchCampaignAccount(camp_id);
		
			model.addAttribute("data3", data3);
			model.addAttribute("data4", data4);
			model.addAttribute("data5", data5);
			
			
			return "success-campaign";	 
			  
		}
	 
}

