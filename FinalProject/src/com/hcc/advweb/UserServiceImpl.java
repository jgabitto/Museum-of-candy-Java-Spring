package com.hcc.advweb;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	public UserServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	@Transactional
	public void addUser(User user) {
		userDAO.addUser(user);		
	}

	@Override
	@Transactional
	public ArrayList<User> getUsersList() {
		return userDAO.getUsersList();
	}

	@Override
	@Transactional
	public User getUser(int Id) {
		return userDAO.getUser(Id);
	}

	@Override
	@Transactional
	public User updateUser(User user) {
		return userDAO.updateUser(user);
	}
	
	

}
