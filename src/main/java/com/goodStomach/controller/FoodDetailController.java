package com.goodStomach.controller;

import com.kai.bean.Food;
import com.kai.web.service.FoodService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FoodDetailController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		Long id = Long.parseLong(request.getParameter("id"));
		HttpSession session = request.getSession();
		FoodService foodService = new FoodService();
		Food foodDetail = foodService.selectById(id);
		session.setAttribute("foodDetail", foodDetail);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("foodDetail");
		return mv;
	}

}
