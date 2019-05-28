package com.examples.spring.boot.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.examples.spring.boot.web.exception.SpringException;
import com.examples.spring.boot.web.model.Login;

/**
 * Handles requests for the application login page.
 */
@Controller
public class LoginController {
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)	
	public ModelAndView login(Model model) {

		return new ModelAndView("login", "command", new Login());
	}
	
	@RequestMapping(value = "/authenticate", method = RequestMethod.POST)
	@ExceptionHandler(SpringException.class)
	public ModelAndView authenticate(@ModelAttribute Login login, Model model) {
		
		if(login.getUserName().equalsIgnoreCase("admin") && login.getPassword().equalsIgnoreCase("admin@123"))
		{
//			logger.info("Authentication success");			
			return new ModelAndView("redirect:/employee/list");
		}
		else
		{
//			logger.info("Authentication failed");
			throw new SpringException("Invalid User or Password");
//			return new ModelAndView("redirect:/login");
		}
		
	}	
}