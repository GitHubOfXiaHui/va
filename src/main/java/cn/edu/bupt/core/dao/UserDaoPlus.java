package cn.edu.bupt.core.dao;

import cn.edu.bupt.core.entity.User;

public interface UserDaoPlus {
	User getUser(Long userId, String username);
}
