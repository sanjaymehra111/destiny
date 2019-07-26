package com.destiny.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.destiny.dao.AdminLoginDaoimpl;
import com.destiny.model.AdminLoginModel;

@Controller
public class AdminLoginController 
{
	@Autowired
	AdminLoginDaoimpl aldao;
	
	@RequestMapping("/admin_login")
	public String admin_login(@ModelAttribute("admin_login_model")AdminLoginModel alm, Model model)
	{
		
		List<AdminLoginModel> data = aldao.checkAdminLogin(alm);
		
		
		if(data != null)
			return "dashboard/admin/admin-dashboard";
		else
			model.addAttribute("message", "error");
			return "dashboard/admin-login";
	}

}
