package com.vacademy.test;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vacademy.modal.User;
import com.vacademy.services.UserService;

public class Test {
	@Autowired

	@RequestMapping("/test")
	public String tset(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_TEST");
		return "testpage";
	}
