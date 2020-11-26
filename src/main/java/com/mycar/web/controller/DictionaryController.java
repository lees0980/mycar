package com.mycar.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dictionary/")
public class DictionaryController {
	
	@GetMapping("main")
	public String main() {
		
		return "dictionary.main";
	}
	
	@GetMapping("maintenance")
	public String maintenance() {
		
		return "dictionary.maintenance";
	}
	
	@GetMapping("dashboard")
	public String dashboard() {
		
		return "dictionary.dashboard";
	}
	
	@GetMapping("emergency")
	public String emergency() {
		
		return "dictionary.emergency";
	}
	
	@GetMapping("parts")
	public String parts() {
		
		return "dictionary.parts";
	}
	
}
