package com.destiny.controller;

import java.util.List;

import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.destiny.dao.Daoimpl;
import com.destiny.model.StoreModel;

@Controller
public class StoreController 
{
	
	@Autowired
	Daoimpl dao = new Daoimpl();
	
	//************************* Controller *************************//
	
	@RequestMapping("/store")
	public String store(@ModelAttribute("user")StoreModel sm, Model model)
	{
		System.out.println(sm.toString());
		
		//Save data
		dao.save(sm);
		
		//Fetch data
		List<StoreModel> data = dao.fetch();
		
		model.addAttribute("data", data);
		model.addAttribute("name", sm.getName());
		model.addAttribute("contact", sm.getContact());
		model.addAttribute("message", "DATA STORED SUUCESSFULLY");
	
		//For testing only
		
		/*
		List<DestinyModel> data = dao.getData();
		model.addAttribute("data", data);
		System.out.println("Data Successfully Stored");
		return "hello";
		 */
		
		/*	
		model.addAttribute("data", sm);
		model.addAttribute("name", sm.getName());
		model.addAttribute("contact", sm.getContact());
		*/
		
		
		return "second";
	}
	
	

	
	//*************************Index page mapping*************************//

	
	@RequestMapping("/first")
	public String index(Model model)
	{
		return "first";
		
	}
	

	@RequestMapping("/")
	public String blank_indexpage(Model model)
	{
		return "index";
		
	}

	@RequestMapping("index")
	public String indexpage(Model model)
	{
		return "index";
		
	}

	
	//*************************home menu Mapping*************************//
	
	@RequestMapping("/start-a-fundraisers")
	public String start_a_fundraisers(Model model)
	{
		return "start-a-fundraisers";
		
	}
	
	@RequestMapping("/how-it-works")
	public String how_it_works(Model model)
	{
		return "how-it-works";
		
	}
	
	/*
	  
	@RequestMapping("/browse-a-fundraisers")
	public String browse_a_fundraisers(Model model)
	{
		return "browse-a-fundraisers";
		
	}
	
	*/
	
	@RequestMapping("/become_a_volunteer")
	public String become_a_volunteer(Model model)
	{
		return "become_a_volunteer";
		
	}

	@RequestMapping("/user-dashboard")
	public String user_dashboard(Model model)
	{

		return "dashboard/user/user-dashboard";
		
	}

	@RequestMapping("/admin-dashboard")
	public String admin_dashboard(Model model)
	{
		return "dashboard/admin/admin-dashboard";
		
	}
	
	@RequestMapping("/login")
	public String login(Model model)
	{
		return "login";
		
	}

	
	
	//*************************Admin Dashboard menu mapping*************************//
	
	
	
	@RequestMapping("/admin-login")
	public String admin_login(Model model)
	{
		return "dashboard/admin-login";
		
	}
	
	
	@RequestMapping("/admin-header")
	public String admin_header(Model model)
	{
		return "dashboard/admin/admin-header";
		
	}
	
	@RequestMapping("/admin-footer")
	public String admin_footer(Model model)
	{
		return "dashboard/admin/admin-footer";
	}
	
	@RequestMapping("/admin-fundraisers")
	public String admin_fundraisers(Model model)
	{
		return "dashboard/admin/admin-fundraisers";
	}
	
	
	@RequestMapping("/admin-campaign")
	public String admin_campaign(Model model)
	{
		return "dashboard/admin/admin-campaign";
	}
	
	
	@RequestMapping("/admin-volunteer")
	public String admin_volunteer(Model model)
	{
		return "dashboard/admin/admin-volunteer";
	}
	
	
	@RequestMapping("/admin-change-password")
	public String admin_change_password(Model model)
	{
		return "dashboard/admin/admin-change-password";
	}
	
	
	@RequestMapping("/campaign-donors")
	public String campaign_donors(Model model)
	{
		return "dashboard/admin/campaign-donors";
	}
	
	@RequestMapping("/edit-campaign")
	public String edit_campaign(Model model)
	{
		return "dashboard/admin/edit-campaign";
	}
	
	
		
	//*************************user menu mapping*************************//
	
	
	
	@RequestMapping("/user-header")
	public String user_header(Model model)
	{
		return "dashboard/user/user-header";
	}

	@RequestMapping("/user-footer")
	public String user_footer(Model model)
	{
		return "dashboard/user/user-footer";
	}

	@RequestMapping("/contact-us")
	public String contact_us(Model model)
	{
		return "dashboard/user/contact-us";
	}


	@RequestMapping("/user-fundraisers")
	public String user_fundraisers(Model model)
	{
		return "dashboard/user/user-fundraisers";
	}

 
	@RequestMapping("/user-change-password")
	public String user_change_password(Model model)
	{
		return "dashboard/user/user-change-password";
	}

	
	@RequestMapping("/user-donation")
	public String user_donation(Model model)
	{
		return "dashboard/user/user-donation";
	}

	
	
	
	//******************User Sub-Menu Mapping*************************//
	
	
	
	@RequestMapping("/manage-overview")
	public String manage_overview(Model model)
	{
		return "dashboard/user/manage-overview";
	}

	@RequestMapping("/edit-cause-details")
	public String edit_cause_details(Model model)
	{
		return "dashboard/user/edit-cause-details";
	}

	@RequestMapping("/manage-header")
	public String manage_header(Model model)
	{
		return "dashboard/user/manage-header";
	}
  
	@RequestMapping("/manage-promote")
	public String manage_promote(Model model)
	{
		return "dashboard/user/manage-promote";
	}
	
	@RequestMapping("/manage-withdrawl")
	public String manage_withdrawl(Model model)
	{
		return "dashboard/user/manage-withdrawl";
	}

	@RequestMapping("/manage-analytics")
	public String manage_analytics(Model model)
	{
		return "dashboard/user/manage-analytics";
	}
	
	@RequestMapping("/manage-tools-and-tips")
	public String manage_tools_and_tips(Model model)
	{
		return "dashboard/user/manage-tools-and-tips";
	}

	
	
	

	
	//*************************redundant mapping*************************//
	
	
/*
	@RequestMapping("/cause-details")
	public String cause_details(Model model)
	{
		return "cause-details";
		
	}
*/
	
	@RequestMapping("/footer")
	public String footer(Model model)
	{
		return "footer";
		
	}
	
	@RequestMapping("/header")
	public String header(Model model)
	{
		return "header";
		
	}
	
	@RequestMapping("/donate")
	public String donate(Model model)
	{
		return "donate";
		
	}
	

	
	

}
