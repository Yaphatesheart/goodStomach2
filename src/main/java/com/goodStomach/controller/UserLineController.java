package com.goodStomach.controller;

import com.kai.bean.Line;
import com.kai.bean.User;
import com.kai.web.service.LineService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class UserLineController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		LineService lineService = new LineService();
		
		User user = (User) session.getAttribute("user");
		Long u_id = user.getId();
		List<Line> userLineList = lineService.selectU_id(u_id);
		session.setAttribute("userLineList", userLineList);
		mv.setViewName("userLine");
		return mv;
	}

}
