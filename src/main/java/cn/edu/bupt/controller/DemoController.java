package cn.edu.bupt.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.bupt.core.service.UserService;

@Controller
public class DemoController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/index")
	public String index() {
		System.out.println("SUCCESS");
		return "demo";
	}
	
	@RequestMapping("/get_user")
	@ResponseBody
	public Map<String, Object> getUser(@RequestParam("id") Long userId, @RequestParam("name") String username) {
		System.out.println("SUCCESS");
		Map<String, Object> json = new HashMap<>();
		json.put("state", "success");
		json.put("data", userService.getUser(userId, username));
		return json;
	}
	
	@RequestMapping("/create_user")
	@ResponseBody
	public String createNewUser(@RequestParam("name") String username) {
		return userService.createNewUser(username).toString();
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
}
