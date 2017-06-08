package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.niit.modaldao.Userdao;
import com.niit.modaldto.User;

@Controller
public class UserController {
	@Autowired
	Userdao userdao;

	@RequestMapping("/Register")
	public String getRegisterpage(Model model) {
		model.addAttribute("user", new User());
		System.out.println("entered register");
		return "Register";
	}

	@RequestMapping(value = "/Register/user" , method=RequestMethod.POST)
	public String RegisterUser(@ModelAttribute("user")User user) {
		System.out.println("Hello "+user.getCustName());
		userdao.addUser(user);
		//userdao.updateUser(user);
		//userdao.deleteUser(cid);
		//userdao.getuserByUsername(null);
		return "Register";
	}

}
