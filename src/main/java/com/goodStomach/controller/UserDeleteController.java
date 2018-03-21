package com.goodStomach.controller;

import com.kai.web.service.UserService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserDeleteController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		long id = (Long.parseLong(request.getParameter("id")));
		
		UserService userService = new UserService();
		userService.deleteOne(id);
		
		return null;
	}
	
}
