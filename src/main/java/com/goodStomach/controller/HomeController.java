package com.goodStomach.controller;


import com.goodStomach.entity.Kind;
import com.goodStomach.service.KindService;
import com.goodStomach.service.impl.KindServiceImpl;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;


@org.springframework.stereotype.Controller
public class HomeController {

	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mv = new ModelAndView();
		KindService kindService = new KindServiceImpl();
		List<Kind> kindList = kindService.selectAll();
		HttpSession session = request.getSession();
		session.setAttribute("kindList", kindList);
		mv.setViewName("home");
		return mv;
	}



}
