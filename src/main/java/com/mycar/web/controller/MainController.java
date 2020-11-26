package com.mycar.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main/")
public class MainController {
	
	@GetMapping("index")
	public String index() {
		
		return "main.index";
	}
	
	@GetMapping("ascenter")
	public String ascenter() {
		
		return "main.ascenter";
	}
	
	@GetMapping("motorshow")
	public String motorshow() {
		return "main.motorshow";
	}

}
