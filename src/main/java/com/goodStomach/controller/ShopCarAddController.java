package com.goodStomach.controller;

import com.kai.bean.Food;
import com.kai.bean.Line;
import com.kai.bean.ShoppingCar;
import com.kai.web.service.FoodService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ShopCarAddController implements Controller {

	private ShoppingCar shoppingCar;
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		FoodService foodService = new FoodService();
		Long id = Long.parseLong(request.getParameter("id"));
		Line line = new Line(id, 1);
		
		HttpSession session = request.getSession();
		if(session.getAttribute("shoppingCar")==null){
			shoppingCar = new ShoppingCar();
		}else{
			shoppingCar = (ShoppingCar) session.getAttribute("shoppingCar");
		}
		
		Food food = foodService.selectById(id);
		line.setFood(food);
		line.setF_id(food.getId());
		line.setName(food.getName());
		line.setPrice(food.getPrice());
		shoppingCar.add(line);
		session.setAttribute("shoppingCar", shoppingCar);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("shopCar");
		return mv;
	}

}
