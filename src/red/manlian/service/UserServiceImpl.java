package red.manlian.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import red.manlian.mapper.UserDao;

import red.manlian.pojo.Sys_user;
import red.manlian.pojo.User;
import red.manlian.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;

	@Override
	public String checkUser(Sys_user user) {
		
		return userDao.checkUser(user);
	}

	@Override
	public User getUserById(String uid) {
		// TODO Auto-generated method stub
		return null;
	}
	
}