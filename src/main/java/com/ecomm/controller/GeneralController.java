package com.ecomm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GeneralController
{
	 @RequestMapping("/login")
	    public String showLoginPage(Model m) throws Exception
	    {
	    	System.out.println("====I am in My Controller - Login Page");
	    	m.addAttribute("pagename","Sign In Page");
	    	return "Login";
	    }
	 
	 @RequestMapping("/register")
	    public String showregisterPage() throws Exception
	    {
	    	System.out.println("====I am in My Controller - Register Page");
	    	return "Register";
	    }
	 @RequestMapping("/home")
	    public String showhomePage() throws Exception
	    {
	    	System.out.println("====I am in My Controller - home Page");
	    	return "home";
	    }
	 @RequestMapping("/userpage")
	    public String showUserPage(Model m) throws Exception
	    {
	    	System.out.println("====I am in My Controller - User Page");
	    	return "UserHome";
	    }
	 @RequestMapping("/adminpage")
	    public String showAdminPage() throws Exception
	    {
	    	System.out.println("====I am in My Controller - Admin Page");
	    	return "AdminHome";
	    }
	 @RequestMapping("/ContactUs")
	    public String showContactUsPage() throws Exception
	    {
	    	System.out.println("====I am in My Controller - Contact Us Page");
	    	return "ContactUs";
	    }
	 @RequestMapping("/AboutUs")
	    public String showAboutUsPage() throws Exception
	    {
	    	System.out.println("====I am in My Controller - About Us Page");
	    	return "AboutUs";
	    }
	 @RequestMapping("/DisplayProduct")
	    public String DisplayProduct() throws Exception
	    {
	    	System.out.println("====I am in My Controller - display product Page");
	    	return "DisplayProduct";
	    }
	 @RequestMapping("/temp")
	    public String temp() throws Exception
	    {
	    	System.out.println("====I am in My Controller - display product Page");
	    	return "temp";
	    }
	 @RequestMapping("/ViewCart")
	    public String ViewCart() throws Exception
	    {
	    	System.out.println("====I am in My Controller - display view cart Page");
	    	return "ViewCart";
	    }
	 @RequestMapping("/ItemAdded")
	    public String ItemAdded() throws Exception
	    {
	    	System.out.println("====I am in My Controller - display item added Page");
	    	return "ItemAdded";
	    }
	 @RequestMapping("/temp1")
	    public String temp1() throws Exception
	    {
	    	System.out.println("====I am in My Controller - display temp1 Page");
	    	return "temp1";
	    }
	 @RequestMapping("/ViewCart2")
	    public String ViewCart2() throws Exception
	    {
	    	System.out.println("====I am in My Controller - display view cart Page");
	    	return "ViewCart2";
	    }
}
