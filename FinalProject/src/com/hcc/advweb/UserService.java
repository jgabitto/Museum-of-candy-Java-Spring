package com.hcc.advweb;

import java.util.ArrayList;

public interface UserService {

	
	public void addUser(User user);
	
	public User getUser(int Id);
	
	public ArrayList<User> getUsersList();
	
	public User updateUser(User user);
	
}
