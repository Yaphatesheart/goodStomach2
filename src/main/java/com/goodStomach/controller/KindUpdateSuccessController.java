package com.goodStomach.controller;

import com.kai.bean.Kind;
import com.kai.web.service.KindService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class KindUpdateSuccessController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		long id = (Long.parseLong(request.getParameter("id")));
		String name = request.getParameter("name");
		String message = request.getParameter("message");
		Kind kind = new Kind(id, name, message);
		
		KindService kindService = new KindService();
		kindService.updateOne(kind);
		
		List<Kind> kindList = kindService.selectAll();
		session.setAttribute("kindList", kindList);
		
		mv.setViewName("manager/kindManager");
		return mv;
	}

}
