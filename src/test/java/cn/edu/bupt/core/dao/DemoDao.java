package cn.edu.bupt.core.dao;

import org.springframework.data.repository.Repository;

import cn.edu.bupt.core.entity.Demo;

public interface DemoDao extends Repository<Demo, Long>, DemoDaoPlus {
	Demo save(Demo demo);
}
