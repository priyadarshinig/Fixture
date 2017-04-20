package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String goToHomePage()
	{
		return "Home";
	}
	@RequestMapping("/Home")
	public String HomePage()
	{
		return "Home";
	}
	
	@RequestMapping("/Login1")
	public String LoginPage()
	{
		return "Login1";
	}
	@RequestMapping("/Register")
	public String Register()
	{
		return "Register";
	}
	@RequestMapping("/Product")
	public String Product()
	{
		return "Product";
	}
	
	
}
