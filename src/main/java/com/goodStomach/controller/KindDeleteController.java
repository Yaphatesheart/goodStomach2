package com.goodStomach.controller;

import com.kai.web.service.KindService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class KindDeleteController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		long id = (Long.parseLong(request.getParameter("id")));
		
		KindService kindService = new KindService();
		kindService.deleteOne(id);

		return null;
	}

}
