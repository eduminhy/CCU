package com.team200.proj.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team200.proj.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDAO dao;
}
