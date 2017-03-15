package cn.edu.bupt.core.dao.impl;

import org.springframework.stereotype.Repository;

import cn.edu.bupt.core.dao.DemoDaoPlus;
import cn.edu.bupt.core.entity.Demo;

@Repository
public class DemoDaoImpl implements DemoDaoPlus {

	@Override
	public Demo getDemo(Long demoId, String name) {
		Demo demo = new Demo();
		demo.setDemoId(demoId);
		demo.setName(name);
		return demo;
	}

}
