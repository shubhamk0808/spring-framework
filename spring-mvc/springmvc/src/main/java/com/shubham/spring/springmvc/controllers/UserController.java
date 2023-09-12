package com.shubham.spring.springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shubham.spring.springmvc.models.User;

@Controller
@RequestMapping("/user")
public class UserController {

	@RequestMapping("/regPage")
	public ModelAndView showRegPage() {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("UserReg");
		return modelAndView;
	}

	@PostMapping("/registerUser")
	public ModelAndView registerUser(@ModelAttribute("user") User user) {

		System.out.println(user);
		ModelAndView modelAndView = new ModelAndView();
		String regStatus;
		regStatus = (user.getAge() > 18 ? "SUCCESSFULL" : "UNSUCCESSFULL");

		modelAndView.addObject("regStatus", regStatus);
		modelAndView.addObject("user", user);
		modelAndView.setViewName("UserRegStatus");
		return modelAndView;
	}

}
