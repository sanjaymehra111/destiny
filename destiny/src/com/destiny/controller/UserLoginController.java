
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

import com.destiny.dao.PasswordEncryptionSha512;
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


	@Autowired
	PasswordEncryptionSha512 pwdenc;
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String userlogin(@ModelAttribute ("user_login_model")UserLoginModel ulm, FundraiserModel fm, Model model, HttpSession session, HttpServletRequest req, RedirectAttributes redirectAttributes)
	{
		
		String epwd = pwdenc.PasswordEncrypt(ulm.getUser_password());
		UserLoginModel data = uldao.checkLogin(ulm, epwd);
		if(data != null) 	
		{
			//model.addAttribute("fundraisers_id", data.getfundraisers_id());
			
			SessionModel sessionModel = new SessionModel();
			sessionModel.setUser_id(data.getfundraisers_id());
			sessionModel.setSession_id(req.getSession().getId());
			sessionModel.setTime(session.getCreationTime());
			session.setAttribute("sessionData", sessionModel);
			
			redirectAttributes.addFlashAttribute("fundraisers_id", data.getfundraisers_id());
			/*redirectAttributes.addFlashAttribute("fundraiserModel",fm)	;*/	
				return "redirect:/user-dashboard";
		}
		
		 else  
		 {
			 model.addAttribute("message", "invalid id and password");
			 return "login";
		 }
	}
	
	
	@RequestMapping("/user_logout")
	public String logoutSession(HttpSession session)
	{
		session.invalidate();
		return "index";
	}
}
