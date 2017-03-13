package cn.edu.bupt.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.bupt.core.dao.UserDao;
import cn.edu.bupt.core.entity.User;
import cn.edu.bupt.core.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	
	@Override
	public User getUser(Long userId, String username) {
		return userDao.getUser(userId, username);
	}

	@Override
	public User createNewUser(String username) {
		User user = new User();
		user.setUsername(username);
		return userDao.save(user);
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}
