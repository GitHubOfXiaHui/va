package cn.edu.bupt.core.service;

import cn.edu.bupt.core.entity.User;

public interface UserService {
	User getUser(Long userId, String username);

	User createNewUser(String username);
}
