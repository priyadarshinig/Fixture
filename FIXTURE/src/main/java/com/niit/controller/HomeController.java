package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String goToHomePage()
	{
		return "Home";
	}
	/*@RequestMapping("/Product")
	public String productPage()
	{
		return "Product";
	}
	@RequestMapping("/Category")
	public String categoryPage()
	{
		return "Category";
	}
	*/
}
