package com.destiny.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.destiny.dao.EditCampaignDaoimpl;
import com.destiny.model.EditCampaignModel;

@Controller
public class EditCampaignController 
{
	// IMAGE PATH
	
	/*C:\Users\sos5\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\destiny\resources\profile-images*/
	/*@RequestParam("campaign_id") String campaign_id, @RequestParam("fundraisers_id") String fundraisers_id, @RequestParam("fundraisers_title") String fundraisers_title,  @RequestParam("fundraisers_goal_amount") String fundraisers_goal_amount, @RequestParam("fundraisers_story") String fundraisers_story, @RequestParam("fundraisers_name") String fundraisers_name, @RequestParam("fundraisers_contact") String fundraisers_contact, @RequestParam("fundraisers_email") String fundraisers_email, @RequestParam("fundraisers_upi_number") String fundraisers_upi_number*/
	
	
	@Autowired
	EditCampaignDaoimpl ecmdao;
	
	
	@RequestMapping(value="/edit_campaign_noimg", method=RequestMethod.POST)
	public String edit_campaign_noimg(@ModelAttribute("EditCampaignModel") EditCampaignModel ecm, Model model)
	{
		ecmdao.EditCampaignNoImg(ecm);
		return "redirect:/user-dashboard";
		
	}

	@RequestMapping(value="/edit_campaign_img", method=RequestMethod.POST)
	public String edit_campaign_img(@ModelAttribute("EditCampaignModel") EditCampaignModel ecm, Model model, HttpSession session, @RequestParam("profile_image") CommonsMultipartFile profile_image, @RequestParam("upi_image") CommonsMultipartFile upi_image) throws Exception 
	{
		//For profile image
		System.out.println("profile : "  +profile_image);
		
		ServletContext context = session.getServletContext();
		String path = context.getRealPath("/resources/profile-images/");
		String filename=profile_image.getOriginalFilename();
		
		byte[] bytes = profile_image.getBytes();  
	    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(new File(path + File.separator + filename)));  
	    stream.write(bytes);  
	    stream.flush();  
	    stream.close(); 
		
	    
	    //For upi image
		System.out.println("upi : "  +upi_image);
	    ServletContext context2 = session.getServletContext();
		String path2 = context2.getRealPath("/resources/upi-images/");
		String filename2=upi_image.getOriginalFilename();
		
		byte[] bytes2 = upi_image.getBytes();  
	    BufferedOutputStream stream2 =new BufferedOutputStream(new FileOutputStream(new File(path2 + File.separator + filename2)));  
	    stream2.write(bytes2);  
	    stream2.flush();  
	    stream2.close(); 
		
	    ecmdao.EditCampaignImg(ecm, filename, filename2);
		return "redirect:/user-dashboard";
		
	}


}
