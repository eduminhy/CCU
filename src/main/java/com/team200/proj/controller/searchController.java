package com.team200.proj.controller;

import com.team200.proj.service.ShowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/searchPage/*")
public class searchController {

    @Autowired
    ShowService service;

    @GetMapping("/searchResult")
    public ModelAndView searchResult(@RequestParam(required = false) String search) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("searchText", search);
        mav.addObject("showlist", service.search(search));
        mav.setViewName("searchPage/searchResult");
        return mav;
    }

}



