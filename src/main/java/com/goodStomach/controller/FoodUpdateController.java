package com.goodStomach.controller;

import com.kai.bean.Food;
import com.kai.bean.Kind;
import com.kai.web.service.FoodService;
import com.kai.web.service.KindService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class FoodUpdateController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		Long id = Long.parseLong(request.getParameter("id"));
		KindService kindService = new KindService();
		List<Kind> kindList = kindService.selectAll();
		
		FoodService foodService = new FoodService();
		Food food = foodService.selectById(id);
		
		HttpSession session = request.getSession();
		session.setAttribute("kindList", kindList);
		session.setAttribute("food", food);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/foodUpdate");
		return mv;
	}

}
