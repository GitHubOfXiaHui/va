package cn.edu.bupt.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.bupt.core.service.DemoService;

@Controller
public class DemoController {
	@Autowired
	private DemoService demoService;
	
	@RequestMapping("/demo")
	public String demo() {
		System.out.println("SUCCESS");
		return "demo";
	}
	
	@RequestMapping("/get_demo")
	@ResponseBody
	public Map<String, Object> getDemo(@RequestParam("id") Long demoId, @RequestParam("name") String name) {
		System.out.println("SUCCESS");
		Map<String, Object> json = new HashMap<>();
		json.put("state", "success");
		json.put("data", demoService.getDemo(demoId, name));
		return json;
	}
	
	@RequestMapping("/create_demo")
	@ResponseBody
	public String createNewDemo(@RequestParam("name") String name) {
		return demoService.createNewDemo(name).toString();
	}

	public DemoService getDemoService() {
		return demoService;
	}

	public void setDemoService(DemoService demoService) {
		this.demoService = demoService;
	}

}
