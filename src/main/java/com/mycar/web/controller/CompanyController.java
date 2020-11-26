package com.mycar.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/company/")
public class CompanyController {

	@GetMapping("main")
	public String index() {

		return "company.shareholder";
	}
}