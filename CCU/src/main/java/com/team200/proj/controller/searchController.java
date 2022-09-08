package com.team200.proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class searchController {
	@RequestMapping("/searchResult")
	public String search() {
		return "searchPage/searchResult";
	}
	

}



