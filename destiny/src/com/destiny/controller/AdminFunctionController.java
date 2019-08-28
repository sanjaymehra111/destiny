package com.destiny.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.GsonHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.destiny.dao.AdminUpdateDaoimpl;
import com.destiny.model.FundraiserModel;
import com.google.gson.Gson;

@Controller
public class AdminFunctionController 
{
	
	@Autowired
	AdminUpdateDaoimpl audao;
	
	@RequestMapping(value="/unblock_user", method=RequestMethod.POST)
	public String unblock_user(FundraiserModel fm, @RequestParam String unblock_user, Model model)
	{
		audao.UpdateUnblockUser(unblock_user);
		return "redirect:/admin-fundraisers";
	}
	
	@RequestMapping(value="/block_user", method=RequestMethod.POST)
	public String block_user(FundraiserModel fm, @RequestParam String block_user, Model model)
	{
		audao.UpdateblockUser(block_user);
		return "redirect:/admin-fundraisers";
	}
	
	@RequestMapping("/edit_user")
	@ResponseBody
	public String edit_user(FundraiserModel fm, @RequestParam String edit_user_id, Model model)
	{
		Gson gson = new Gson();
		FundraiserModel data2 = audao.FetchUserDetails(edit_user_id);
		String details = gson.toJson(data2);
		return details;
		
		
	}

}
