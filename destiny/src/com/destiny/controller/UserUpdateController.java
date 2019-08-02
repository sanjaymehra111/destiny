package com.destiny.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.destiny.dao.UserUpdateDaoimpl;
import com.destiny.model.SessionModel;
import com.destiny.model.UserUpdateModel;

@Controller
public class UserUpdateController 
{

	@Autowired
	UserUpdateDaoimpl uudao;

 	
	//Update pan card number
	
	@RequestMapping("/user_pan_update")
	public String userPanUpdate(@ModelAttribute("user_update_model")UserUpdateModel uum, Model model)
	{
		uudao.UpdatePan(uum);
		return "redirect:/user-dashboard";
	}

	//Update aadhar card number

	@RequestMapping("/user_aadhar_update")
	public String userAadharUpdate(@ModelAttribute("user_update_model")UserUpdateModel uum, Model model)
	{
		uudao.UpdateAadhar(uum);
		return "redirect:/user-dashboard";
	}
	
	
	//Update user Details (Name, City, DOB)

	@RequestMapping("/user_update_details")
	public String userUpdateDetails(@ModelAttribute("user_update_model")UserUpdateModel uum, Model model)
	{
		uudao.UpdateuserDetails(uum);
		return "redirect:/user-dashboard"; 
	}
	
	@RequestMapping("/user_change_password")
	public String userChangePasswod(@ModelAttribute("user_update_model") UserUpdateModel uum, Model model, HttpSession session, RedirectAttributes redirectAttributes)
	{
		SessionModel ses = (SessionModel) session.getAttribute("sessionData");
		String fid=ses.getUser_id();
		
		UserUpdateModel data = uudao.checkUserPassword(fid);
			
		String oldp1 = uum.getOld_password();
		String oldp2 = data.getOld_password();
		
		if (oldp1.equals(oldp2))
		{
			uudao.updateUserPassword(uum, fid);
			redirectAttributes.addAttribute("pwd_message", "Updated");
			return "redirect:/user-dashboard";
		}
		else
		{ 
			redirectAttributes.addAttribute("pwd_message", "error");
			return "redirect:/user-dashboard";
		}
	}
	  
	
	@RequestMapping("/user_create_password")
	public String userCcreatePasswod(@ModelAttribute("user_update_model") UserUpdateModel uum, Model model, HttpSession session, RedirectAttributes redirectAttributes)
	{
		SessionModel ses = (SessionModel) session.getAttribute("sessionData");
		String fid=ses.getUser_id();
		
			uudao.updateUserPassword(uum, fid);
			redirectAttributes.addAttribute("pwd_message", "Updated");
			
			return "redirect:/user-dashboard";
	}
	
	
}
