package cn.edu.bupt.core.dao;

import cn.edu.bupt.core.entity.Demo;

public interface DemoDaoPlus {
	Demo getDemo(Long demoId, String name);
}
