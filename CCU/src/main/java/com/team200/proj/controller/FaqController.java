package com.team200.proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FaqController {
	@RequestMapping("/faq")
	public String faq() {
		return "faqboard/faq";
	}
}
