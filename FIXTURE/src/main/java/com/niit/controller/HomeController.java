package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.modaldto.Product;
import com.niit.modaldao.Productdao;
@Controller
public class HomeController {
	@Autowired
	Productdao productdao;

	@RequestMapping({"/","/Home"})
	
		public String goToHomePage()
	{
		return "Home";
	}
		public String showProduct1(Model m)
		{
			Product product = new Product();
			m.addAttribute(product);
			
			List<Product> list=productdao.retrieveProduct();
			m.addAttribute("proddet",list);
			return "Productlist";
		}

	
	@RequestMapping("Login")
	public String showLoginPage()
	{
		return "Login";
	}
	
	@RequestMapping("Loginfailure")
	public String showLoginfailurePage()
	{
		return "Loginfailure";
	}
	
	@RequestMapping("Cart")
	public String showCartPage()
	{
		return "Cart";
	}
	@RequestMapping("Checkout")
	public String showCheckoutPage()
	{
		return "Checkout";
	}
	@RequestMapping("Aboutus")
	public String showAboutusPage()
	{
		return "Aboutus";
	}
	//@RequestMapping("ProductDesc")
	//public String showProductDescPage()
	//{
		//return "ProductDesc";
	//}
	@RequestMapping(value="Productlist")
	public String showProduct(Model m)
	{
		Product product = new Product();
		m.addAttribute(product);
		
		List<Product> list=productdao.retrieveProduct();
		m.addAttribute("proddet",list);
		return "Productlist";
	}
	
	
}
