package cn.edu.bupt.core.service;

import cn.edu.bupt.core.entity.Demo;

public interface DemoService {
	Demo getDemo(Long demoId, String name);

	Demo createNewDemo(String name);
}
