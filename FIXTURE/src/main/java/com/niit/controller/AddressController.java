package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.modaldao.Addressdao;
import com.niit.modaldto.Address;


@Controller
public class AddressController 
{
	@Autowired Addressdao addressdao;
	
	@Autowired Address address;
	
	@RequestMapping("/ShippingAddress")
	public String address()
	{
		return "ShippingAddress";
	}
	
	@RequestMapping(value="addAddress",method=RequestMethod.GET)
	public ModelAndView addAddress(@RequestParam("line1") String addl1,@RequestParam("line2") String addl2,@RequestParam("city") String city,@RequestParam("pincode") String pin)
	{
		System.out.println("Start of add address method");
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String loggedInUserid = auth.getName();
		
		address.setUserid(loggedInUserid);
		address.setLine1(addl1);
		address.setLine2(addl2);
		address.setCity(city);
		address.setPincode(pin);
		addressdao.save(address);
		ModelAndView mv=new ModelAndView("Cart");
		return mv;
	}
}