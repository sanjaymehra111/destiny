package com.destiny.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.destiny.dao.VolunteerDaoimpl;
import com.destiny.model.VolunteerModel;

@Controller
public class VolunteerController 
{
	@Autowired
	VolunteerDaoimpl vldao;
	
	@RequestMapping(value="/volunteer_details", method=RequestMethod.POST)
	public String volunteer_details(@ModelAttribute("VolunteerModel") VolunteerModel vm)
	{
		vldao.UpdateVolunteer(vm);
		
		return "redirect:/index";
	}
	
	
}
