package com.hcc.advweb;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public UserDAOImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void addUser(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		// TODO Auto-generated method stub

	}

	@Override
	public ArrayList<User> getUsersList() {
		ArrayList<User> usersList = 
				(ArrayList<User>)sessionFactory.
				getCurrentSession().createQuery("FROM Student").
				list();
		return usersList;
	}

	@Override
	public User getUser(int Id) {
		User user = (User)sessionFactory.getCurrentSession().get(User.class, Id);
		return user;
	}

	@Override
	public User updateUser(User user) {
		
		return null;
	}

}
