package com.destiny.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.destiny.dao.EditCampaignDaoimpl;
import com.destiny.model.EditCampaignModel;

@Controller
public class EditCampaignController 
{
	// IMAGE PATH
	
	/*C:\Users\sos5\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\destiny\resources\profile-images*/
	
	
	@Autowired
	EditCampaignDaoimpl ecmdao;
	
	//Campaign Details
	
	@RequestMapping(value="/edit_campaign_details", method=RequestMethod.POST)
	public String edit_campaign_details(@ModelAttribute("EditCampaignModel") EditCampaignModel ecm, Model model)
	{
		ecmdao.EditCampaignDetails(ecm);
		return "redirect:/user-dashboard";
	}
	
	
	//Campaign fundraisers Details
	
	
	@RequestMapping(value="/edit_campaign_fundraisers", method=RequestMethod.POST)
	public String edit_beneficiary_details(@ModelAttribute("EditCampaignModel") EditCampaignModel ecm, Model model)
	{
		ecmdao.EditCampaignFundraisers(ecm);
		return "redirect:/user-dashboard";
	}
	
	//Campaign fundraisers Details with profile image

	@RequestMapping(value="/edit_campaign_fundraisers_profile", method=RequestMethod.POST)
	public String edit_beneficiary_details_img(@ModelAttribute("EditCampaignModel") EditCampaignModel ecm, Model model, HttpSession session, @RequestParam("profile_image") CommonsMultipartFile profile_image) throws Exception 
	{
		//For profile image
		
		ServletContext context = session.getServletContext();
		String path = context.getRealPath("/resources/profile-images/");
		String filename=profile_image.getOriginalFilename();
		
		byte[] bytes = profile_image.getBytes();  
	    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(new File(path + File.separator + filename)));  
	    stream.write(bytes);  
	    stream.flush();  
	    stream.close(); 
		
	    ecmdao.EditCampaignFundraisersProfile(ecm, filename);
		return "redirect:/user-dashboard";
		
	}
	
	//Campaign upi number
	
	@RequestMapping(value="/edit_campaign_upi_no", method=RequestMethod.POST)
	public String edit_campaign_upi_no(@ModelAttribute("EditCampaignModel") EditCampaignModel ecm, Model model)
	{
		ecmdao.EditCampaignUpiNo(ecm);
		return "redirect:/user-dashboard";
	}
	
	//Campaign upi number with image
	
	@RequestMapping(value="/edit_campaign_upi_image", method=RequestMethod.POST)
	public String edit_campaign_upi_image(@ModelAttribute("EditCampaignModel") EditCampaignModel ecm, Model model, HttpSession session, @RequestParam("upi_image") CommonsMultipartFile upi_image) throws Exception 
	{
		//For upi image
		ServletContext context2 = session.getServletContext();
		String path2 = context2.getRealPath("/resources/upi-images/");
		String filename2=upi_image.getOriginalFilename();
		
		byte[] bytes2 = upi_image.getBytes();  
	    BufferedOutputStream stream2 =new BufferedOutputStream(new FileOutputStream(new File(path2 + File.separator + filename2)));  
	    stream2.write(bytes2);  
	    stream2.flush();  
	    stream2.close(); 
		
	    ecmdao.EditCampaignUpiImg(ecm, filename2);
		return "redirect:/user-dashboard";
		
	}

}
