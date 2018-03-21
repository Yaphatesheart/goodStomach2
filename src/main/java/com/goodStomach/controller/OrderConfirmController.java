package com.goodStomach.controller;

import com.kai.bean.Line;
import com.kai.bean.Order;
import com.kai.bean.ShoppingCar;
import com.kai.bean.User;
import com.kai.web.service.LineService;
import com.kai.web.service.OrderService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

public class OrderConfirmController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		OrderService orderService = new OrderService();
		LineService lineService = new LineService();
		
		HttpSession session = request.getSession();
		ShoppingCar shoppingCar = (ShoppingCar) session.getAttribute("shoppingCar");
		//shoppingCar.clear();
		User user = (User) session.getAttribute("user");
		Long u_id = user.getId();
		String name = user.getUsername();
		System.out.println("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk"+shoppingCar+user);
		
		Double cost = shoppingCar.getCost();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String orderDate = simpleDateFormat.format(new Date());
		System.out.println("now time is :"+orderDate);
		Order order = new Order(null, cost, orderDate);
		order.setName(name);
		order.setU_id(u_id);
		order.setState("未完成");
		orderService.addOrder(order);
		
		Map<Long, Line> map = shoppingCar.getLines();
		for(Long l:map.keySet()){
			Line line = map.get(l);
			line.setU_id(u_id);
			line.setOrderDate(orderDate);
			lineService.addLine(line);
		}
		
		shoppingCar.clear();
		session.setAttribute("shoppingCar", shoppingCar);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("shopCar");
		return mv;
	}

}
