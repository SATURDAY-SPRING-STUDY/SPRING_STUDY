package com.hyo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {
	
	@RequestMapping(value="/login")
	public String login(){
		
		return "/login/login";
		
	}
	
	
	@RequestMapping(value="/join")
	public String join(){
		
		return "/join/join";
	}
	

}
