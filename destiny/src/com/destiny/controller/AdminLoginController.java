package com.destiny.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.destiny.dao.AdminLoginDaoimpl;
import com.destiny.model.AdminLoginModel;
import com.destiny.model.SessionModel;

@Controller
public class AdminLoginController 
{
	@Autowired
	AdminLoginDaoimpl aldao;
	
	@RequestMapping("/admin-login")
	public String admin_login(@ModelAttribute("admin_login_model")AdminLoginModel alm, Model model, HttpSession session, HttpServletRequest req, RedirectAttributes redirectAttributes)
	{
		
		AdminLoginModel data = aldao.checkAdminLogin(alm);
		//
		
		if(data != null)
		{
			
			SessionModel AsessionModel = new SessionModel();
			AsessionModel.setUser_id(data.getA_id());
			AsessionModel.setSession_id(req.getSession().getId());
			AsessionModel.setTime(session.getCreationTime());
			session.setAttribute("AsessionData", AsessionModel);
			
			redirectAttributes.addFlashAttribute("admin_id", data.getA_id());
			redirectAttributes.addFlashAttribute("adminModel", alm);
			
			return "redirect:/admin-dashboard";
		}
			
		else
		{
			model.addAttribute("message", "Invalid ID and PASSWORD");
			return "dashboard/admin-login";
		} 
	}
	
	
	
	@RequestMapping("/admin_logout")
	public String logoutSession(HttpSession session)
	{
		session.invalidate();
		return "redirect:/admin_login";
	}

}
