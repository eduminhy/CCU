package com.team200.proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignupController {
	@RequestMapping("/signup")
	public String signup() {
		return "member/signup";
	}
}
