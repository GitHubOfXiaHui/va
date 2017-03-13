package cn.edu.bupt.core.dao.impl;

import org.springframework.stereotype.Repository;

import cn.edu.bupt.core.dao.UserDaoPlus;
import cn.edu.bupt.core.entity.User;

@Repository
public class UserDaoImpl implements UserDaoPlus {

	@Override
	public User getUser(Long userId, String username) {
		User user = new User();
		user.setUserId(userId);
		user.setUsername(username);
		return user;
	}

}
