package com.shubham.spring.springmvc.controllers;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shubham.spring.springmvc.models.Employee;

@RequestMapping("/employee")
@Controller
public class EmployeeController {

	private ArrayList<Employee> empArr = new ArrayList<Employee>();

	public EmployeeController() {
		super();
		empArr.add(new Employee(101, "Shubham Kumar", 111111.11f));
		empArr.add(new Employee(102, "Sarthak Kumar", 56111.00f));
		empArr.add(new Employee(103, "Sumit Kumar", 18711.21f));
		empArr.add(new Employee(104, "Amit Kumar", 98311.87f));
		empArr.add(new Employee(105, "Aman Kumar", 38000.11f));
	}

	@RequestMapping("/showEmployee")
	public ModelAndView empInfo() {

		//using ModelAndView to add both Model and View in the web MVC framework
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("id1", empArr.get(0).getId());
		modelAndView.addObject("name1", empArr.get(0).getName());
		modelAndView.addObject("salary1", empArr.get(0).getSalary());

		modelAndView.addObject("id2", empArr.get(1).getId());
		modelAndView.addObject("name2", empArr.get(1).getName());
		modelAndView.addObject("salary2", empArr.get(1).getSalary());

		modelAndView.setViewName("EmpInfo");
		return modelAndView;

	}

	@RequestMapping("/showEmpList")
	public String empInfoList() {

		//using ModelMap to hold model data for use with UI. Returning the view name separately.
		ModelMap modelMap = new ModelMap();
		modelMap.addAttribute("empList", empArr);
		String viewName = "EmpInfoList";
		return viewName;

	}

}
