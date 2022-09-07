package com.team200.proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class preferController {
	@RequestMapping("/preferGenre")
	public String prefer() {
		return "preferGenrePage/preferGenre";
	}

}
