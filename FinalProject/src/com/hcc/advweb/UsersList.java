package com.hcc.advweb;

import java.util.ArrayList;

public class UsersList {

	private static ArrayList<User> usersList;
	
	public static ArrayList<User> getUsersList() {
		if ((usersList == null) || (usersList.size() == 0)) {
			usersList = new ArrayList<User>();
			usersList.add(new User(1,"Raj","Joseph"));
			usersList.add(new User(2,"Jose","Gonzales"));
			usersList.add(new User(3,"Bob","Smith"));
			usersList.add(new User(4,"Adrian","Shah"));
			usersList.add(new User(5,"Kelly","Branco"));
		}
		System.out.println("User List ---->"+usersList);
		return usersList;
	}
	public static void setUsersList(ArrayList<User> usersList) {
		usersList = usersList;
	}

	public static ArrayList<User> addUser(User user) {
		getUsersList().add(user);
		return usersList;
	}
	

}
