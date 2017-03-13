package cn.edu.bupt.core.dao;

import org.springframework.data.repository.Repository;

import cn.edu.bupt.core.entity.User;

public interface UserDao extends Repository<User, Long>, UserDaoPlus {
	User save(User user);
}
