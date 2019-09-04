package com.destiny.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.destiny.dao.AdminUpdateDaoimpl;
import com.destiny.dao.CampaignAccountDaoimpl;
import com.destiny.dao.CampaignWithdrawAmountDaoimpl;
import com.destiny.dao.SpecificCauseDetailsDaoimpl;
import com.destiny.model.CampaignAccountModel;
import com.destiny.model.CampaignWithdrawAmountModel;
import com.destiny.model.CampaignsModel;
import com.destiny.model.FundraiserModel;
import com.google.gson.Gson;

@Controller
public class AdminFunctionController 
{

	@Autowired
	CampaignWithdrawAmountDaoimpl cwadao;

	@Autowired
	AdminUpdateDaoimpl audao;
	
	@Autowired
	SpecificCauseDetailsDaoimpl smdao;

	@Autowired
	CampaignAccountDaoimpl camdao;

	// unlock user 
	
	@RequestMapping(value="/unblock_user", method=RequestMethod.POST)
	public String unblock_user(@RequestParam String unblock_user, Model model)
	{
		audao.UpdateUnblockUser(unblock_user);
		return "redirect:/admin-fundraisers";
	}
	
	// block user 	
	
	@RequestMapping(value="/block_user", method=RequestMethod.POST)
	public String block_user(@RequestParam String block_user, Model model)
	{
		audao.UpdateblockUser(block_user);
		return "redirect:/admin-fundraisers";
	}
	
	// Get Fundraisers details id, email, pan number, aadhar number
	
	@RequestMapping("/edit_user")
	@ResponseBody
	public String edit_user(@RequestParam String edit_user_id, Model model)
	{
		Gson gson = new Gson();
		FundraiserModel data2 = audao.FetchUserDetails(edit_user_id);
		String details = gson.toJson(data2);
		return details;
	}
	
	
	// update fundraisers details email, pan number, aadhar number
	
	@RequestMapping(value="/update_user_details", method=RequestMethod.GET)
	public String update_user_details(@RequestParam String id, @RequestParam String email, @RequestParam String pan, @RequestParam String aadhar, Model model)
	{
		audao.UpdateUserDetails(id, email, pan, aadhar);
		return "redirect:/admin-fundraisers";
	}
	
	// update campaign approve status 
	
	@RequestMapping(value="/campaign_approve", method=RequestMethod.GET)
	public String campaign_approve(@RequestParam String cid)
	{
		audao.CampaignApprove(cid);
		return "redirect:/admin-fundraisers";
	}

	// update campaign disapprove status 
	
	@RequestMapping(value="/campaign_disapprove", method=RequestMethod.GET)
	public String campaign_disapprove(@RequestParam String cid)
	{
		audao.CampaignDisapprove(cid);
		return "redirect:/admin-fundraisers";
	}

	
	// update campaign success status 
	
	@RequestMapping(value="/campaign_success", method=RequestMethod.GET)
	public String campaign_success(@RequestParam String cid)
	{
		audao.CampaignSuccess(cid);
		return "redirect:/admin-fundraisers";
	}

		
	// Get Fundraisers details id, email, pan number, aadhar number
	
	@RequestMapping("/fetch_campaign_details")
	@ResponseBody
	public String fetch_campaign_details(@RequestParam String cid, @RequestParam String fid)
	{
		Gson gson = new Gson();
		FundraiserModel data3 = audao.FetchFundraisersDetails(fid);
		CampaignsModel data4 = audao.FetchCampaignDetails(cid);
		CampaignAccountModel data5 = audao.FetchCampaignAccountDetails(cid);
		
		String fundraisers_details = gson.toJson(data3);
		String campaign_details= gson.toJson(data4);
		String account_details= gson.toJson(data5);
		String details = "["+campaign_details+","+fundraisers_details+","+account_details+"]";
		
		return details;
	}

		
		// unlock volunteer 
	
		@RequestMapping(value="/unblock_volunteer", method=RequestMethod.GET)
		public String unblock_volunteer(@RequestParam String unblock_volunteer, Model model)
		{
			audao.UpdateUnblockVolunteer(unblock_volunteer);
			return "redirect:/admin-fundraisers";
		}
		
		// block voluneer
		
		@RequestMapping(value="/block_volunteer", method=RequestMethod.GET)
		public String block_volunteer(@RequestParam String block_volunteer, Model model)
		{
			audao.UpdateBlockVolunteer(block_volunteer);
			return "redirect:/admin-fundraisers";
		}
		
		
		
		// approved withdraw request  
		
			@RequestMapping(value="/unblock_withdraw", method=RequestMethod.GET)
			public String unblock_withdraw(@RequestParam String unblock_withdraw, String c_id, String f_id, Model model)
			{
				audao.UpdateUnblockWithdraw(unblock_withdraw);

				//update fundraisers balance amount
				audao.UpdateBalanceAmount(c_id);
				
				return "redirect:/admin-fundraisers";
			}
			
			
			// una-pproved withdraw request
			
			@RequestMapping(value="/block_withdraw", method=RequestMethod.GET)
			public String block_withdraw(@RequestParam String block_withdraw, String c_id, String f_id, Model model)
			{
				audao.UpdateBlockWithdraw(block_withdraw);
				return "redirect:/admin-fundraisers";
			}
			
			
			// una-pproved withdraw request
			@ResponseBody
			@RequestMapping(value="/action_withdraw", method=RequestMethod.GET)
			public String action_withdraw(@RequestParam String cid, String fid, Model model)
			{
				//update fundraisers balance amount
				audao.UpdateBalanceAmount(cid);
				
				Gson gson = new Gson();
				
				// all withdraw transaction details
				List<CampaignWithdrawAmountModel> data1 = cwadao.FetchWithdrawRequest(cid);
				// campaign balance amount details 
				CampaignsModel data2 =  audao.FetchCampaignDetails(cid);
				
				String transaction = gson.toJson(data1);
				String balance_amount = gson.toJson(data2.getFundraisers_balance_amount());
				String details = "["+transaction+","+balance_amount+"]";
				
				System.out.println(details);
				return details;
			}
	

}
