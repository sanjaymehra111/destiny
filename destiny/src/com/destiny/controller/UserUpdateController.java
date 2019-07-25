package com.destiny.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.destiny.dao.UserUpdateDaoimpl;
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
		return "dashboard/user/user-dashboard";
	}

	//Update aadhar card number

	@RequestMapping("/user_aadhar_update")
	public String userAadharUpdate(@ModelAttribute("user_update_model")UserUpdateModel uum, Model model)
	{
		uudao.UpdateAadhar(uum);
		return "dashboard/user/user-dashboard";
	}
	
	
	//Update user Details

	@RequestMapping("/user_update_details")
	public String userUpdateDetails(@ModelAttribute("user_update_model")UserUpdateModel uum, Model model)
	{
		uudao.UpdateuserDetails(uum);
		return "dashboard/user/user-dashboard";
	}
	
	
}
