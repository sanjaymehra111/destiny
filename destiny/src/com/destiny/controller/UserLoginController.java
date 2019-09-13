
package com.destiny.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.destiny.dao.PasswordEncryptionSha512;
import com.destiny.dao.SpecificCauseDetailsDaoimpl;
import com.destiny.dao.UserLoginDaoimpl;
import com.destiny.model.CampaignsModel;
import com.destiny.model.FundraiserModel;
import com.destiny.model.SessionModel;
import com.destiny.model.UserLoginModel;
import com.google.gson.Gson;

@Controller
@Scope("session")
public class UserLoginController 
{
	@Autowired
	UserLoginDaoimpl uldao;
	
	@Autowired
	SpecificCauseDetailsDaoimpl smdao;


	@Autowired
	PasswordEncryptionSha512 pwdenc;
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String userlogin(@ModelAttribute ("user_login_model")UserLoginModel ulm, FundraiserModel fm, Model model, HttpSession session, HttpServletRequest req, RedirectAttributes redirectAttributes)
	{
		
		String epwd = pwdenc.PasswordEncrypt(ulm.getUser_password());
		UserLoginModel data = uldao.checkLogin(ulm, epwd);
		
		if(data != null) 	
		{
			UserLoginModel status = uldao.UserStatus(data.getfundraisers_id());
			//System.out.println("user login status is :" + status.getPersonal_status());
			
			if(status.getPersonal_status().equals("" +1))
			{
				SessionModel sessionModel = new SessionModel();
				sessionModel.setUser_id(data.getfundraisers_id());
				sessionModel.setSession_id(req.getSession().getId());
				sessionModel.setTime(session.getCreationTime());
				session.setAttribute("sessionData", sessionModel);
				redirectAttributes.addFlashAttribute("fundraisers_id", data.getfundraisers_id());
				return "redirect:/user-dashboard";
			}
			
			else
			{
				model.addAttribute("message", "YOUR ACCOUNT IS TEMPORARILY BLOCKED");
				return "login";
			}
		}
		
		 else  
		 {
			 model.addAttribute("message", "INCORRECT EMIAL ID AND PASSWORD");
			 return "login";
		 }
	}
	
			
	
	@RequestMapping(value="/facebook_login", method=RequestMethod.GET)
	public String facebook_login(@RequestParam String id, String name, String email, String profile, HttpSession session, RedirectAttributes redirectAttributes)
	{
		UserLoginModel data =  uldao.CheckFacebookEmail(email, name, profile);
		String fid = data.getfundraisers_id();
		
		SessionModel sessionModel = new SessionModel();
		sessionModel.setUser_id(fid);
		sessionModel.setSession_id(session.getId());
		sessionModel.setTime(session.getCreationTime());
		session.setAttribute("sessionData", sessionModel);
		
		redirectAttributes.addFlashAttribute("fundraisers_id", fid);
		
		//return data2;
		return "redirect:/user-dashboard";
		
	}
	
	
	@RequestMapping("/user_logout")
	public String logoutSession(HttpSession session)
	{
		session.invalidate();
		return "redirect:/index";
	}
}
