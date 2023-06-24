/**
 * This is a Spring MVC controller for handling registration and login requests for an admin user.
 */
/**
 * This is a Spring MVC controller for handling registration and login requests for an admin user.
 */
package com.cdac.cntr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cdac.dto.Admin;
import com.cdac.service.AdminService;
import com.cdac.valid.AdminValidation;

/**
 * This is a Spring MVC controller for handling registration and login requests for an admin user.
 */
@Controller
public class AdminController {
	// This code is defining a Spring MVC controller for handling requests related
	// to the registration and
	// login of an admin user.
	@Autowired
	private AdminService adminService;
	@Autowired
	private AdminValidation adminValidation;

	@RequestMapping(value = "prep_reg_form.htm", method = RequestMethod.GET)
	public String prepRegform(ModelMap map) {

		map.put("admin", new Admin());
		return "reg_form";

	}

	@RequestMapping(value = "/reg.htm", method = RequestMethod.POST)
	public String register(Admin admin, BindingResult result, ModelMap map) {
		adminValidation.validate(admin, result);
		if (result.hasErrors()) {
			return "reg_form";
		}
		adminService.addAdmin(admin);
		return "admin";
	}

	@RequestMapping(value = "/prep_log_form.htm", method = RequestMethod.GET)
	public String prepLogForm(ModelMap map) {
		map.put("admin", new Admin());
		return "log_form";
	}

	@RequestMapping(value = "/login.htm", method = RequestMethod.POST)
	public String login(Admin admin, BindingResult result, ModelMap map, HttpSession session) {

		adminValidation.validate(admin, result);
		if (result.hasErrors()) {
			return "log_form";
		}
		boolean b = adminService.findAdmin(admin);
		if (b) {
			session.setAttribute("admin", admin);
			return "home1";
		} else {
			map.put("admin", new Admin());
			return "log_form";
		}

	}

}
