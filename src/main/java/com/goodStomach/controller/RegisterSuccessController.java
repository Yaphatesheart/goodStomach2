package com.goodStomach.controller;

import com.kai.bean.User;
import com.kai.web.service.UserService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterSuccessController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mv = new ModelAndView();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		User user = new User(null, username, password, phone, address);
		
		UserService userService = new UserService();
		User u = userService.selectByName(username);
		
		if(u!=null){
			System.out.println("该用户已经存在");
			System.out.println(u);
			mv.setViewName("register");
		}else{
			userService.insertOne(user);
			System.out.println("添加用户");
			mv.setViewName("index");
		}
		
		return mv;
	}

}
