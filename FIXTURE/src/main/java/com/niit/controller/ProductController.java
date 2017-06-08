package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.modaldao.Categorydao;
import com.niit.modaldao.Productdao;
import com.niit.modaldao.Supplierdao;
import com.niit.modaldto.Category;
import com.niit.modaldto.Product;
import com.niit.modaldto.Supplier;



@Controller
public class ProductController 
{
	@Autowired
	Productdao productdao;
	@Autowired
	Supplierdao supplierdao;
	@Autowired
	Categorydao categorydao;
	
	@RequestMapping(value="Product")
	public String showProduct(Model m)
	{
		Product product = new Product();
		m.addAttribute(product);
		
		List<Product> list=productdao.retrieveProduct();
		m.addAttribute("proddet",list);
		m.addAttribute("suplist",this.getSuppliers());
		m.addAttribute("catlist",this.getCategories());
		return "Product";
	}
	
	@RequestMapping(value="InsertProduct",method=RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product") Product product,@RequestParam("pimage") MultipartFile filedet,Model m)
	{
		
		System.out.println("product contoller");
		productdao.addProduct(product);
		// Image Uploading Code
				String path = "C:\\Users\\user\\workspace\\FIXTURE\\src\\main\\webapp\\resources\\images\\";
				path = path + String.valueOf(product.getProdid()) + ".jpg";
				File f=new File(path);
				if (!filedet.isEmpty()) 
				{
					try
					{
						byte[] bytes = filedet.getBytes();
						FileOutputStream fos=new FileOutputStream(f);
						BufferedOutputStream bs = new BufferedOutputStream(fos);
						bs.write(bytes);
						bs.close();
					}
					catch(Exception e)
					{
						System.out.println("Exception Arised:"+e);
					}
				}
				else
				{
					System.out.println("File Uploading Problem");
				}
				//Complete Image Uploading
		
		Product product1 = new Product();
		m.addAttribute(product1);
		
		List<Product> list=productdao.retrieveProduct();
		m.addAttribute("proddet",list);
		
		return "Product";
	}
	
	@RequestMapping(value="deleteProduct/{prodid}",method=RequestMethod.GET)
	public String deleteProduct(@PathVariable("prodid")int prodid,Model m)
	{
		
		productdao.deleteProduct(prodid);
		
		Product product1 = new Product();
		m.addAttribute(product1);
		
		List<Product> list=productdao.retrieveProduct();
		m.addAttribute("proddet",list);
		
		return "Product";
	}
	
	@RequestMapping(value="updateProduct/{prodid}",method=RequestMethod.GET)
	public String readyUpdate(@PathVariable("prodid")int prodid,Model m)
	{
		Product product=productdao.getProduct(prodid);
		m.addAttribute(product);
		
		List<Product> list=productdao.retrieveProduct();
		m.addAttribute("proddet",list);
		
		return "UpdateProduct";
	}
	
	@RequestMapping(value="UpdateProduct",method=RequestMethod.POST)
	public String updateProduct(@ModelAttribute("product") Product product,Model m)
	{
		productdao.updateProduct(product);
		
		Product product1 = new Product();
		m.addAttribute(product1);
		
		List<Product> list=productdao.retrieveProduct();
		m.addAttribute("proddet",list);
		
		return "redirect:/Product";
	}
	
	public LinkedHashMap<Integer,String> getCategories()
	{
		List<Category> list=categorydao.retrieve();
		
		LinkedHashMap<Integer,String> catlist=new LinkedHashMap<Integer,String>();
		
		for(Category cat:list)
		{
			catlist.put(cat.getCatid(),cat.getCatname());
		}
		
		return catlist;
	}
	
	public LinkedHashMap<Integer,String> getSuppliers()
	{
		List<Supplier> list=supplierdao.retrieve();
		
		LinkedHashMap<Integer,String> suplist=new LinkedHashMap<Integer,String>();
		
		for(Supplier sup:list)
		{
			suplist.put(sup.getSid(),sup.getSname());
		}
		
		return suplist;
	}
}


