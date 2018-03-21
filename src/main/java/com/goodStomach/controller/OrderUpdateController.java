package com.goodStomach.controller;

import com.kai.bean.Order;
import com.kai.web.service.OrderService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class OrderUpdateController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/orderUpdate");
		
		OrderService orderService = new OrderService();
		Long id = Long.parseLong(request.getParameter("id"));
		Order order = orderService.findById(id);
		
		HttpSession session = request.getSession();
		session.setAttribute("order", order);
		return mv;
	}

}
