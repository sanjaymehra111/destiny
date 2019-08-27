package com.destiny.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.destiny.dao.CampaignWithdrawAmountDaoimpl;
import com.destiny.model.CampaignWithdrawAmountModel;

@Controller
public class CampaignWithdrawAmountController 
{
	@Autowired
	CampaignWithdrawAmountDaoimpl cwadao;
	
	@RequestMapping("/campaign_withdraw_amount_request")
	public String campaign_withdraw_amount_request(@ModelAttribute("CampaignWithdrawAmountModel") CampaignWithdrawAmountModel cwam, HttpSession session)
	{
		cwadao.CampaignWithdrawRequest(cwam);
		return "redirect:/user-dashboard";
	}
	
}
