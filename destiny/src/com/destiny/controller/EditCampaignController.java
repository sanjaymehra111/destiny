package com.destiny.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
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
import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;

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
	
	
	//Campaign Multiple images 
	
		@RequestMapping(value="/edit_campaign_images", method=RequestMethod.POST)
		public String edit_campaign_images(@ModelAttribute("EditCampaignModel") EditCampaignModel ecm, @RequestParam ArrayList<MultipartFile> files, HttpSession session) throws IOException 
		{
			int fs = files.size();
			String images = "";
			for(int i = 0; i<fs; i++)
			{
				ServletContext context3 = session.getServletContext();
				String path3 = context3.getRealPath("/resources/campaign-images/");
				String[] filename3 = new String[fs];
				filename3[i] = files.get(i).getOriginalFilename();
				
				images+="/destiny/files/campaign-images/" + filename3[i] + ",";
				
				byte[] bytes3 = files.get(i).getBytes();  
			    BufferedOutputStream stream3 =new BufferedOutputStream(new FileOutputStream(new File(path3 + File.separator + filename3[i])));  
			    stream3.write(bytes3);  
			    stream3.flush();  
			    stream3.close();
			}
			
			ecmdao.EditCampaignImages(ecm, images);
			return "redirect:/user-dashboard";
		}
		
		@RequestMapping(value="/edit_campaign_documents", method=RequestMethod.POST)
		public String edit_campaign_documents(@ModelAttribute("EditCampaignModel") EditCampaignModel ecm, @RequestParam ArrayList<MultipartFile> docfiles, HttpSession session)throws IOException
		{
			int dfs = docfiles.size();
			String documents = "";
			for(int i = 0; i<dfs; i++)
			{
				ServletContext context4= session.getServletContext();
				String path4 = context4.getRealPath("/resources/campaign-documents/");
				String[] filename4 = new String[dfs];
				filename4[i] = docfiles.get(i).getOriginalFilename();
				documents+="/destiny/files/campaign-documents/"+filename4[i]+","; 
				
				byte[] bytes4 = docfiles.get(i).getBytes();
				BufferedOutputStream stream4 = new BufferedOutputStream(new FileOutputStream(new File(path4 + File.separator + filename4[i])));
				stream4.write(bytes4);
				stream4.flush();
				stream4.close();
			}

			ecmdao.EditCampaignDocuments(ecm, documents);
			return "redirect:/user-dashboard";
		}
		

}
