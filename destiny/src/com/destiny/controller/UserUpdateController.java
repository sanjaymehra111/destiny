package com.destiny.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.security.SecureRandom;
import java.util.Random;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.destiny.dao.CampaignAccountDaoimpl;
import com.destiny.dao.PasswordEncryptionSha512;
import com.destiny.dao.UniqueCodeGeneratorDaoimpl;
import com.destiny.dao.UserUpdateDaoimpl;
import com.destiny.model.CampaignAccountModel;
import com.destiny.model.EditCampaignModel;
import com.destiny.model.SessionModel;
import com.destiny.model.UserUpdateModel;

@Controller
public class UserUpdateController 
{

	@Autowired
	UserUpdateDaoimpl uudao;

	@Autowired
	CampaignAccountDaoimpl camdao;

	@Autowired
	UniqueCodeGeneratorDaoimpl ucgdao;
	
	@Autowired
	PasswordEncryptionSha512 pwdenc;
	
	/*String Ucode = ucgdao.GetUniqueCode();*/

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

	@RequestMapping(value="/user_update_details", method=RequestMethod.POST)
		public String user_update_details(@ModelAttribute("user_update_model")UserUpdateModel uum, Model model)
		{
			System.out.println("data : " +uum);
			uudao.UpdateuserDetails(uum);
			return "redirect:/user-dashboard"; 
		}
		 
	//Update user Details (Name, City, DOB, profile image)

	@RequestMapping(value="/user_update_details_img", method=RequestMethod.POST)
	public String user_update_details_img(UserUpdateModel uum, HttpSession session, @RequestParam CommonsMultipartFile file)throws Exception
	{
		ServletContext context= session.getServletContext();
		
		String path = context.getRealPath("/resources/profile-images/");
		String filename= ucgdao.GetUniqueCode()+file.getOriginalFilename();
		//String profile_path = path  + filename;
		
		byte[] bytes = file.getBytes();  
		    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(new File(path + File.separator + filename)));  
		    stream.write(bytes);  
		    stream.flush();  
		    stream.close(); 
		uudao.UpdateuserDetailsImg(uum, filename);
		return "redirect:/user-dashboard"; 
	}
	  
	
	
	@RequestMapping("/savefile")
	public String savefiles(@RequestParam CommonsMultipartFile file, HttpSession session) throws Exception
	{
		
		ServletContext context= session.getServletContext();
		
		String path = context.getRealPath("/resources/profile-images/");
		String filename= ucgdao.GetUniqueCode()+file.getOriginalFilename();
		String full_path = path  + filename;
		System.out.println("full path is : " + full_path);  
		
		byte[] bytes = file.getBytes();  
		    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(new File(path + File.separator + filename)));  
		    stream.write(bytes);  
		    stream.flush();  
		    stream.close(); 
		    
		return "redirect:/user-dashboard"; 
	}
	
	
	//Update Change password
	
	@RequestMapping("/user_change_password")
	public String userChangePasswod(@ModelAttribute("user_update_model") UserUpdateModel uum, Model model, HttpSession session, RedirectAttributes redirectAttributes) throws Exception
	{
		SessionModel ses = (SessionModel) session.getAttribute("sessionData");
		String fid=ses.getUser_id();
		
		UserUpdateModel data = uudao.checkUserPassword(fid);
		
		String pwd = uum.getNew_password();
			
		String oldp1 = pwdenc.PasswordEncrypt(uum.getOld_password());
		String dbpwd2 = data.getOld_password();
		
/*		System.out.println("old " +oldp1);
		System.out.println("data " +dbpwd2);
*/		
		String epwd = pwdenc.PasswordEncrypt(pwd);
		
		if (oldp1.equals(dbpwd2))
		{
			uudao.updateUserPassword(uum, fid, epwd);
			redirectAttributes.addAttribute("pwd_message", "Updated");
			return "redirect:/user-dashboard";
		}
		else
		{ 
			redirectAttributes.addAttribute("pwd_message", "error");
			return "redirect:/user-dashboard";
		}
	}
	  
/*	private static byte[] getSalt() throws Exception 
    {
        SecureRandom sr = SecureRandom.getInstance("SHA1PRNG");
        byte[] salt = new byte[16];
        sr.nextBytes(salt);
        return salt;
        
        //access via  = byte[] salt = getSalt();
    }*/
	
	@RequestMapping("/user_create_password")
	public String userCcreatePasswod(@ModelAttribute("user_update_model") UserUpdateModel uum, Model model, HttpSession session, RedirectAttributes redirectAttributes) throws Exception
	{
		SessionModel ses = (SessionModel) session.getAttribute("sessionData");
		String fid=ses.getUser_id();
		String pwd = uum.getNew_password();
		System.out.println("user new password is :" + pwd);
		
			
			String epwd = pwdenc.PasswordEncrypt(pwd);
			
			uudao.updateUserPassword(uum, fid, epwd);
			redirectAttributes.addAttribute("pwd_message", "Updated");
			
			return "redirect:/user-dashboard";
	}
	
	
	//update User Campaign Account Details
	@RequestMapping(value="/campaign_acount_details", method=RequestMethod.POST)
	public String campaign_acount_details(CampaignAccountModel cam, HttpSession session, @RequestParam("pan_images") CommonsMultipartFile pan_images, @RequestParam("cancel_cheque_images") CommonsMultipartFile cancel_cheque_images, @RequestParam("docs_files") CommonsMultipartFile docs_files)throws Exception
	{
		
		ServletContext context1 = session.getServletContext();
		String path1 = context1.getRealPath("/resources/campaign-account-images/");
		String filename1= ucgdao.GetUniqueCode()+pan_images.getOriginalFilename();
		byte[] bytes1 = pan_images.getBytes();
		BufferedOutputStream stream1 = new BufferedOutputStream(new FileOutputStream(new File(path1 + File.separator + filename1)));
		stream1.write(bytes1);
		stream1.flush();
		stream1.close();

		ServletContext context2 = session.getServletContext();
		String path2 = context2.getRealPath("/resources/campaign-account-images/");
		String filename2= ucgdao.GetUniqueCode()+cancel_cheque_images.getOriginalFilename();
		byte[] bytes2 = cancel_cheque_images.getBytes();
		BufferedOutputStream stream2 = new BufferedOutputStream(new FileOutputStream(new File(path2 + File.separator + filename2)));
		stream2.write(bytes2);
		stream2.flush();
		stream2.close();
		
		ServletContext context3 = session.getServletContext();
		String path3 = context3.getRealPath("/resources/campaign-account-images/");
		String filename3= ucgdao.GetUniqueCode()+docs_files.getOriginalFilename();
		byte[] bytes3 = docs_files.getBytes();
		BufferedOutputStream stream3 = new BufferedOutputStream(new FileOutputStream(new File(path3 + File.separator + filename3)));
		stream3.write(bytes3);
		stream3.flush();
		stream3.close();

		camdao.CampaignAccountDetails(cam, filename1, filename2, filename3);
		return "redirect:/user-dashboard";
	}
	
	
}
