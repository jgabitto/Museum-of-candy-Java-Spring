package com.hcc.advweb;

import java.util.ArrayList;

public interface UserDAO {

	public void addUser(User user);
	
	public ArrayList<User> getUsersList();
	
	public User getUser(int Id);
	
	public User updateUser(User user);

}
