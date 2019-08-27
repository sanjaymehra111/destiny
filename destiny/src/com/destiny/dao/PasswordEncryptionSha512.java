package com.destiny.dao;

import java.math.BigInteger;
import java.security.MessageDigest;

import org.springframework.stereotype.Repository;

@Repository
public class PasswordEncryptionSha512 
{
	public String PasswordEncrypt(String pwd)
	{
		
		String ecpwd = null;
		
		try
		{
			MessageDigest msg = MessageDigest.getInstance("SHA-512");
			msg.reset();
			msg.update(pwd.getBytes("utf-8"));
			ecpwd = String.format("%0128x", new BigInteger(1,msg.digest())); 
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return ecpwd;
	}

}

/*
 public String PasswordEncrypt(String pwd, byte[] salt)
	{
		
		String ecpwd = null;
		 
  try
 
{
	MessageDigest md = MessageDigest.getInstance("SHA-512");
    md.update(salt);
    byte[] bytes = md.digest(pwd.getBytes());
    StringBuilder sb = new StringBuilder();
    for(int i=0; i< bytes.length ;i++)
    {
        sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
    }
    ecpwd = sb.toString();
}
catch (Exception e)
{
    e.printStackTrace();
}
return ecpwd;
*/