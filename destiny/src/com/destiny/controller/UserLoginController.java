
package com.destiny.controller;

import java.util.List;

import javax.naming.Binding;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.SessionScope;

import com.destiny.dao.SpecificCauseDetailsDaoimpl;
import com.destiny.dao.UserLoginDaoimpl;
import com.destiny.model.FundraisersModel;
import com.destiny.model.UserLoginModel;

@Controller
@Scope("session")
public class UserLoginController 
{
	@Autowired
	UserLoginDaoimpl uldao;
	
	@Autowired
	SpecificCauseDetailsDaoimpl smdao;
	
	@RequestMapping("/user_login")
	public String userlogin(@ModelAttribute ("user_login_model")UserLoginModel ulm, FundraisersModel fm, Model model, HttpSession session, HttpServletRequest req)
	{
		checkSession(ulm, fm, model, session, req);
		
		String sid = (String) session.getAttribute("s_id");
		System.out.println(" session id is = " + sid );
		
		if(sid != null)
		 {
			
			return "dashboard/user/user-dashboard";
			
		 }
		   
		 else  
		 {
			 System.out.println("error");
			 return "login";
		 }
		
	}
	
	
	public void checkSession(@ModelAttribute ("user_login_model")UserLoginModel ulm, FundraisersModel fm, Model model, HttpSession session, HttpServletRequest req)
	{
		String f_id = uldao.checkLogin(ulm.getUser_id(), ulm.getUser_password());
		session.setAttribute("s_id", f_id);
		String sid = (String) session.getAttribute("s_id");
		
		List<FundraisersModel> data2 = smdao.fetch(sid);
		model.addAttribute("data2", data2);
		model.addAttribute("fm", fm);
		System.out.println("form data in controller:" +  sid);
		
		
		
	}
	
	
	
	@RequestMapping("/user_logout")
	public String logoutSession(HttpSession session)
	{
		session.invalidate();
		return "index";
	}
}
