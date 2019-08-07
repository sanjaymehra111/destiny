
package com.destiny.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.destiny.dao.SpecificCauseDetailsDaoimpl;
import com.destiny.dao.UserLoginDaoimpl;
import com.destiny.model.FundraiserModel;
import com.destiny.model.SessionModel;
import com.destiny.model.UserLoginModel;

@Controller
@Scope("session")
public class UserLoginController 
{
	@Autowired
	UserLoginDaoimpl uldao;
	
	@Autowired
	SpecificCauseDetailsDaoimpl smdao;
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String userlogin(@ModelAttribute ("user_login_model")UserLoginModel ulm, FundraiserModel fm, Model model, HttpSession session, HttpServletRequest req, RedirectAttributes redirectAttributes)
	{
		
		
		UserLoginModel data = uldao.checkLogin(ulm);
		if(data != null) 	
		{
			//model.addAttribute("fundraisers_id", data.getfundraisers_id());
			
			SessionModel sessionModel = new SessionModel();
			sessionModel.setUser_id(data.getfundraisers_id());
			sessionModel.setSession_id(req.getSession().getId());
			sessionModel.setTime(session.getCreationTime());
			session.setAttribute("sessionData", sessionModel);
			
			redirectAttributes.addFlashAttribute("fundraisers_id", data.getfundraisers_id());
			redirectAttributes.addFlashAttribute("fundraiserModel",fm)	;	
			 
			
			//String s_fid = sessionModel.getUser_id();
			//redirectAttributes.addAttribute("s_fid", s_fid);
			
				return "redirect:/user-dashboard";
			
		}
		
		 
		   
		 else  
		 {
			 model.addAttribute("message", "invalid id and password");
			 return "login";
		 }
		
		
		//System.out.println("data is : " + data.get(0));
		
		/*
		UserLoginModel check = data.get(0);
		
		System.out.println("dao data in controller" + data);
		System.out.println(" session id is = " + check);
		System.out.println(" id = "+ ulm.getfundraisers_id());
		
		
		//return "dashboard/user/user-dashboard";
		*/
	
	
	
		
	}
	
	
	/*
	
	public void checkSession(@ModelAttribute ("user_login_model")UserLoginModel ulm, FundraisersModel fm, Model model, HttpSession session, HttpServletRequest req)
	{
		List<UserLoginModel> f_id = (List<UserLoginModel>) uldao.checkLogin(ulm);
		session.setAttribute("s_id", f_id);
		String sid = (String) session.getAttribute("s_id");
		
		List<FundraisersModel> data2 = smdao.fetch(sid);
		model.addAttribute("data2", data2);
		model.addAttribute("fm", fm);
		System.out.println("form data in controller:" +  sid);
		
		
		
	}
	
	*/
	
	@RequestMapping("/user_logout")
	public String logoutSession(HttpSession session)
	{
		session.invalidate();
		return "index";
	}
}
