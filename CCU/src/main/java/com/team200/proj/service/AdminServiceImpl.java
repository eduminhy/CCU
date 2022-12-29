package com.team200.proj.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team200.proj.dao.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {
	@Inject
	AdminDAO dao;
	
}
