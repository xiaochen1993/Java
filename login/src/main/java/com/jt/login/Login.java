package com.jt.login;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Login {

	@RequestMapping("/login")
	public ModelAndView login(String username,String password){
		System.out.println(username);
	//	mv.setViewName("success");
		Map m=new HashMap<>();
		m.put("a",username);
		ModelAndView mv = new ModelAndView("success",m);
		
	//	mv.addObject("username", m);
	   
		return mv;
	}
}
