package com.goodStomach.controller;

import com.kai.bean.Line;
import com.kai.bean.Order;
import com.kai.bean.SomeMessage;
import com.kai.web.service.LineService;
import com.kai.web.service.OrderService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class OrderDetailController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Long id = Long.parseLong(request.getParameter("id"));
		System.out.println("kkkkkkkkkkkkkkkk"+id);
		OrderService orderService = new OrderService();
		Order order = orderService.findById(id);
		String orderDate = order.getOrderDate();
		Long u_id = order.getU_id();
		
		LineService lineService = new LineService();
		SomeMessage someMessage = new SomeMessage(orderDate, u_id);
		List<Line> lineList = lineService.selectByU_id(someMessage);
		
		session.setAttribute("lineList", lineList);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/orderDetail");
		return mv;
	}

}
