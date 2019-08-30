package com.destiny.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.destiny.dao.AdminDetailsDaoimpl;
import com.destiny.dao.AdminUpdateDaoimpl;
import com.destiny.dao.BrowseFundraiserDaoimpl;
import com.destiny.dao.CampaignAccountDaoimpl;
import com.destiny.dao.CampaignWithdrawAmountDaoimpl;
import com.destiny.dao.Daoimpl;
import com.destiny.dao.SpecificCauseDetailsDaoimpl;
import com.destiny.dao.UserUpdateDaoimpl;
import com.destiny.model.AdminLoginModel;
import com.destiny.model.CampaignAccountModel;
import com.destiny.model.CampaignWithdrawAmountModel;
import com.destiny.model.CampaignsModel;
import com.destiny.model.DonationModel;
import com.destiny.model.FundraiserModel;
import com.destiny.model.SessionModel;
import com.destiny.model.StoreModel;
import com.destiny.model.UserUpdateModel;
import com.destiny.model.VolunteerModel;

@Controller
public class StoreController 
{
	
	@Autowired
	Daoimpl dao;
	
	@Autowired
	SpecificCauseDetailsDaoimpl smdao;

	@Autowired
	UserUpdateDaoimpl uudao;
	
	@Autowired
	BrowseFundraiserDaoimpl bfdao;
	
	@Autowired
	CampaignAccountDaoimpl camdao;

	@Autowired
	CampaignWithdrawAmountDaoimpl cwadao;
	
	@Autowired
	AdminDetailsDaoimpl admdao;
	
	@Autowired
	AdminUpdateDaoimpl adupdao;
	
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
	public String start_a_fundraisers(Model model, HttpSession session)
	{
	/*	SessionModel sesModel = (SessionModel) session.getAttribute("sessionData");
		//if session is null then redirect to login page
		//System.out.println("sid is : " + sesModel.toString());
		
		if (sesModel == null)
			return "index";
		
		else*/
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
	
	

	@RequestMapping(value="/user-dashboard", method=RequestMethod.GET)
	public String user_dashboard(HttpSession session, Model model, @ModelAttribute("fundraisers_id")String fid, @ModelAttribute("pwd_message")String pwd_mwssage, @ModelAttribute("fundraisersModel")FundraiserModel fm)
	{
		bfdao.fetchDonorList();
		SessionModel sesModel = (SessionModel) session.getAttribute("sessionData");
		model.addAttribute("pwd_message", pwd_mwssage);
		
		if(!fid.equals("")){
			List<FundraiserModel> data2 = smdao.fetchFundraisersDetails(fid);
			model.addAttribute("data2", data2);
			return "dashboard/user/user-dashboard";
		}
		
		else 
		{
			if(sesModel!=null)
			{
				List<FundraiserModel> data2 = smdao.fetchFundraisersDetails(sesModel.getUser_id());
				model.addAttribute("data2", data2);
				return "dashboard/user/user-dashboard";
			}
			else
			{
				return "redirect:/index";					
			}		
		}	
	}
	
	
	@RequestMapping("/admin-dashboard")
	public String admin_dashboard(HttpSession session, @ModelAttribute("admin_id") String aid, /*@ModelAttribute("adminModel") String alm,*/ Model model)
	{
		SessionModel AsesModel = (SessionModel) session.getAttribute("AsessionData");
		
		if(!aid.equals(""))
		{
			List<AdminLoginModel> data1 = admdao.FetchAdminDetails(AsesModel.getUser_id());
			AdminLoginModel data2 = adupdao.FundraisersQuantity();
			AdminLoginModel data3 = adupdao.CampaignsQuantity();
			AdminLoginModel data4 = adupdao.VolunteerQuantity();
			
			model.addAttribute("data1", data1);
			model.addAttribute("fundraisers_qty", data2.getFundraisers_qty());
			model.addAttribute("campaigns_qty", data3.getCampaign_qty());
			model.addAttribute("volunteers_qty", data4.getVolunteer_qty());
			
			return "dashboard/admin/admin-dashboard";
		}
		
		else
		{
			if(AsesModel!=null)
			{
				
				List<AdminLoginModel> data1 = admdao.FetchAdminDetails(AsesModel.getUser_id());
				AdminLoginModel data2 = adupdao.FundraisersQuantity();
				AdminLoginModel data3 = adupdao.CampaignsQuantity();
				AdminLoginModel data4 = adupdao.VolunteerQuantity();
				
				model.addAttribute("data1", data1);
				model.addAttribute("fundraisers_qty", data2.getFundraisers_qty());
				model.addAttribute("campaigns_qty", data3.getCampaign_qty());
				model.addAttribute("volunteers_qty", data4.getVolunteer_qty());
				
				return "dashboard/admin/admin-dashboard";				
			}
			else
				{
					return "redirect:/admin_login";
					
				}
		}
	}
	
	@RequestMapping("/login")
	public String login(Model model)
	{
		return "login";
		
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
	public String user_fundraisers(Model model, HttpSession session, CampaignsModel cm)
	{
		SessionModel sesModel = (SessionModel) session.getAttribute("sessionData");
		
		
			if(sesModel!=null)
			{
				List<CampaignsModel> data2 = smdao.fetchCampaignUsingfid(sesModel.getUser_id());
				model.addAttribute("data2", data2);
				model.addAttribute("cm", cm); 
				//System.out.println("campaign : " + data2);
				return "dashboard/user/user-fundraisers";
			} 
			else
			{
				return "redirect:/index";					
			}
			
	}

 
	@RequestMapping(value="/user-change-password", method=RequestMethod.GET)
	public String user_change_password(Model model, HttpSession session, @ModelAttribute("fundraisersModel")FundraiserModel fm)
	{
		
		SessionModel sesModel = (SessionModel) session.getAttribute("sessionData");
		
		//System.out.println("f id : " + fid + " password length is : "+ pwd);
		
		  
			if(sesModel!=null)
			{
				String fid=sesModel.getUser_id();
				UserUpdateModel data = uudao.checkUserPassword(fid);
				int pwd = data.getOld_password().length();
			
				if(pwd > 5)
					{
						model.addAttribute("message", "password_exist");
						return "dashboard/user/user-change-password";
					}
				
				else 
					{			model.addAttribute("message", "password_not_exist");
								return "dashboard/user/user-change-password";
					}
			}
			
			else
			{
				return "redirect:/index";					
			}
	}
	
	@RequestMapping("/user-donation")
	public String user_donation(Model model)
	{
		return "dashboard/user/user-donation";
	}

	
	
	
	//******************User Sub-Menu Mapping*************************//
	
	
	
	@RequestMapping("/manage-overview/{fund_id}/{camp_id}")
	public String manage_overview(Model model, @PathVariable("fund_id") String fund_id, @PathVariable("camp_id") String camp_id, CampaignsModel cm, CampaignAccountModel cam, FundraiserModel fm, HttpSession session)
	{
		bfdao.fetchDonorList();
		SessionModel sesModel = (SessionModel) session.getAttribute("sessionData");
		
		
		if (sesModel!= null)
		{
			List<FundraiserModel> data1 = smdao.fetchFundraisersDetails(fund_id);
			List<CampaignsModel> data2 = smdao.fetchCampaignsDetails(camp_id);
			CampaignsModel data3 = smdao.fetchCampaignsImages(camp_id);
			List<CampaignAccountModel> data4 = camdao.FetchCampaignAccount(camp_id);
			
			String images = data3.getFundraisers_campaign_images();
			
			model.addAttribute("allimages", images);
			model.addAttribute("data1", data1);
			model.addAttribute("data2", data2);
			model.addAttribute("data4", data4);
			return "dashboard/user/manage-overview";
		}
		else
		{
					return "redirect:/index";
		} 
	}
	
	

	@RequestMapping("/edit-cause-details/{fund_id}/{camp_id}")
	public String edit_cause_details(Model model, @PathVariable("fund_id") String fund_id, @PathVariable("camp_id") String camp_id, CampaignsModel cm, FundraiserModel fm, HttpSession session)
	{
		SessionModel sesModel = (SessionModel) session.getAttribute("sessionData");
		
		if (sesModel!= null)
		{
			List<FundraiserModel> data1 = smdao.fetchFundraisersDetails(fund_id);
			List<CampaignsModel> data2 = smdao.fetchCampaignsDetails(camp_id);
			CampaignsModel data3 = smdao.fetchCampaignsImages(camp_id);
			List<CampaignAccountModel> data4 = camdao.FetchCampaignAccount(camp_id);
			
			
			String images = data3.getFundraisers_campaign_images();
			
			model.addAttribute("allimages", images);
			model.addAttribute("data1", data1);
			model.addAttribute("data2", data2);
			model.addAttribute("data4", data4);
			
			
			return "dashboard/user/edit-cause-details";
		}
		else
		{
					return "redirect:/index";
		} 
	}

	@RequestMapping("/manage-header")
	public String manage_header(Model model)
	{
		return "dashboard/user/manage-header";
	}
  
	@RequestMapping("/manage-promote/{fund_id}/{camp_id}")
	public String manage_promote(Model model, @PathVariable("fund_id") String fund_id, @PathVariable("camp_id") String camp_id, CampaignsModel cm, FundraiserModel fm, HttpSession session)
	
	{
		SessionModel sesModel = (SessionModel) session.getAttribute("sessionData");
		
		if (sesModel!= null)
		{
			List<FundraiserModel> data1 = smdao.fetchFundraisersDetails(fund_id);
			List<CampaignsModel> data2 = smdao.fetchCampaignsDetails(camp_id);
			CampaignsModel data3 = smdao.fetchCampaignsImages(camp_id);
			
			String images = data3.getFundraisers_campaign_images();
			
			model.addAttribute("allimages", images);
			model.addAttribute("data1", data1);
			model.addAttribute("data2", data2);
			model.addAttribute("fm", fm);
			model.addAttribute("cm", cm);
			
			return "dashboard/user/manage-promote";
		}
		else
		{
					return "redirect:/index";
		} 
	}
	
	@RequestMapping("/manage-withdrawl/{fund_id}/{camp_id}")
	public String manage_withdrawl(Model model, @PathVariable("fund_id") String fund_id, @PathVariable("camp_id") String camp_id, CampaignsModel cm, FundraiserModel fm, HttpSession session)
	
	{
		SessionModel sesModel = (SessionModel) session.getAttribute("sessionData");
		
		if (sesModel!= null)
		{
			List<FundraiserModel> data1 = smdao.fetchFundraisersDetails(fund_id);
			List<CampaignsModel> data2 = smdao.fetchCampaignsDetails(camp_id);
			CampaignsModel data3 = smdao.fetchCampaignsImages(camp_id);
			List<CampaignAccountModel> data4 = camdao.FetchCampaignAccount(camp_id);
			List<CampaignWithdrawAmountModel> data5 = cwadao.FetchWithdrawRequest(camp_id);
			
			
			String images = data3.getFundraisers_campaign_images();
			
			model.addAttribute("allimages", images);
			model.addAttribute("data1", data1);
			model.addAttribute("data2", data2);
			model.addAttribute("data4", data4);
			model.addAttribute("data5", data5);
			return "dashboard/user/manage-withdrawl";
		}
		else
		{
					return "redirect:/index";
		} 
	}

	@RequestMapping("/manage-analytics/{fund_id}/{camp_id}")
	public String manage_analytics(Model model, @PathVariable("fund_id") String fund_id, @PathVariable("camp_id") String camp_id, CampaignsModel cm, FundraiserModel fm, HttpSession session)
	
	{
		SessionModel sesModel = (SessionModel) session.getAttribute("sessionData");
		
		if (sesModel!= null)
		{
			List<FundraiserModel> data1 = smdao.fetchFundraisersDetails(fund_id);
			List<CampaignsModel> data2 = smdao.fetchCampaignsDetails(camp_id);
			CampaignsModel data3 = smdao.fetchCampaignsImages(camp_id);
			
			String images = data3.getFundraisers_campaign_images();
			
			model.addAttribute("allimages", images);
			model.addAttribute("data1", data1);
			model.addAttribute("data2", data2);
			model.addAttribute("fm", fm);
			model.addAttribute("cm", cm);
			
			return "dashboard/user/manage-analytics";
		}
		else
		{
					return "redirect:/index";
		} 
	}
	
	@RequestMapping("/manage-tools-and-tips/{fund_id}/{camp_id}")
	public String manage_tools_and_tips(Model model, @PathVariable("fund_id") String fund_id, @PathVariable("camp_id") String camp_id, CampaignsModel cm, FundraiserModel fm, HttpSession session)
	
	{
		SessionModel sesModel = (SessionModel) session.getAttribute("sessionData");
		
		if (sesModel!= null)
		{
			List<FundraiserModel> data1 = smdao.fetchFundraisersDetails(fund_id);
			List<CampaignsModel> data2 = smdao.fetchCampaignsDetails(camp_id);
			CampaignsModel data3 = smdao.fetchCampaignsImages(camp_id);
			
			String images = data3.getFundraisers_campaign_images();
			
			model.addAttribute("allimages", images);
			model.addAttribute("data1", data1);
			model.addAttribute("data2", data2);
			model.addAttribute("fm", fm);
			model.addAttribute("cm", cm);
			
			return "dashboard/user/manage-tools-and-tips";
		}
		else
		{
					return "redirect:/index";
		} 
	}

	@RequestMapping("/delete-campaign/{fund_id}/{camp_id}")
	public String delete_campaign(Model model, CampaignsModel cm, @PathVariable("fund_id") String fund_id, @PathVariable("camp_id") String camp_id, HttpSession session)
	{
		SessionModel sesModel = (SessionModel) session.getAttribute("sessionData");
		
		if (sesModel!= null)
		{
			smdao.deleteCampaign(camp_id, fund_id);
			return "redirect:/user-dashboard";
		}
		else
		{
			return "redirect:/index";
		} 
	}
	
	

	//*************************Admin Dashboard menu mapping*************************//
	
	
	
	@RequestMapping("/admin_login")
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
	public String admin_fundraisers(Model model, HttpSession session)
	{
		SessionModel sessionModel = (SessionModel) session.getAttribute("AsessionData");
		
		if(sessionModel != null)
		{
			List<FundraiserModel> data1 =  adupdao.FetchFundraisers();
			model.addAttribute("data1", data1);
			
			return "dashboard/admin/admin-fundraisers";	
		}
		else
		{
			return "redirect:/admin_login";
			
		}
		
	}
	
	@RequestMapping("/admin-campaign")
	public String admin_campaign(Model model, HttpSession session)
	{
		SessionModel sessionModel = (SessionModel) session.getAttribute("AsessionData");
		
		if(sessionModel != null)
		{
			List<CampaignsModel> data1 =  adupdao.FetchCampaigns();
			model.addAttribute("data1", data1);
			return "dashboard/admin/admin-campaign";
		}
		else
		{
			return "redirect:/admin_login";
			
		}
		
	}
	
	
	@RequestMapping("/admin-volunteer")
	public String admin_volunteer(Model model, HttpSession session)
	{
		
		SessionModel sessionModel = (SessionModel) session.getAttribute("AsessionData");
		
		if(sessionModel != null)
		{
			List<VolunteerModel> data1 =  adupdao.FetchVolunteer();
			model.addAttribute("data1", data1);
			return "dashboard/admin/admin-volunteer";
		}
		else
		{
			return "redirect:/admin_login";
			
		}
		
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
	
	@RequestMapping("/admin-edit-campaign/{fund_id}/{camp_id}")
	public String admin_campaign_details(Model model, @PathVariable("fund_id") String fund_id, @PathVariable("camp_id") String camp_id, HttpSession session)
	{
	
		SessionModel sesModel = (SessionModel) session.getAttribute("AsessionData");
		
		if (sesModel!= null)
		{
			List<FundraiserModel> data1 = smdao.fetchFundraisersDetails(fund_id);
			List<CampaignsModel> data2 = smdao.fetchCampaignsDetails(camp_id);
			CampaignsModel data3 = smdao.fetchCampaignsImages(camp_id);
			List<CampaignAccountModel> data4 = camdao.FetchCampaignAccount(camp_id);
			List<DonationModel> data5 = smdao.FetchDonorDetails(camp_id);
			String images = data3.getFundraisers_campaign_images();
			
			model.addAttribute("allimages", images);
			model.addAttribute("data1", data1);
			model.addAttribute("data2", data2);
			model.addAttribute("data4", data4);
			model.addAttribute("data5", data5);
			
			return "dashboard/admin/edit-campaign";
		}
		else
		{
			return "redirect:/admin-login";
		} 
	}
	
	
	
	
/*	@RequestMapping("/edit-campaign")
	public String edit_campaign(Model model)
	{
		return "dashboard/admin/edit-campaign";
	}
*/	

	
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
