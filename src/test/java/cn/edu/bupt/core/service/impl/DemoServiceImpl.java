package cn.edu.bupt.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.bupt.core.dao.DemoDao;
import cn.edu.bupt.core.entity.Demo;
import cn.edu.bupt.core.service.DemoService;

@Service
public class DemoServiceImpl implements DemoService {
	@Autowired
	private DemoDao demoDao;
	
	@Override
	public Demo getDemo(Long demoId, String name) {
		return demoDao.getDemo(demoId, name);
	}

	@Override
	public Demo createNewDemo(String name) {
		Demo demo = new Demo();
		demo.setName(name);
		return demoDao.save(demo);
	}

	public DemoDao getDemoDao() {
		return demoDao;
	}

	public void setDemoDao(DemoDao demoDao) {
		this.demoDao = demoDao;
	}

}
