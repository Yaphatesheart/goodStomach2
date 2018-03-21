package com.goodStomach.controller;

import com.kai.bean.Order;
import com.kai.bean.PageBean;
import com.kai.web.service.OrderService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class OrderManagerController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		OrderService orderService = new OrderService();
		List<Order> ordersList = orderService.findAll();
		HttpSession session = request.getSession();
		
		String pageId = request.getParameter("id");
		int curPage = 0;
		if(pageId==null){
			curPage = 1;
		}else{
			curPage = Integer.parseInt(pageId);
		}
		System.out.println("curPage value is:"+curPage);
		PageBean pageBean = new PageBean(ordersList.size());//初始化PageBean对象  
		//设置当前页  
		pageBean.setCurPage(curPage);
		//这里page是从页面上获取的一个参数，代表页数  
		//获得分页大小  
		int pageSize = pageBean.getPageSize();
		//获得分页数据在list集合中的索引 
		int firstIndex = (curPage-1)*pageSize;
		int toIndex = curPage*pageSize;
		if(toIndex>ordersList.size()){
			toIndex = ordersList.size();
		}
		if(firstIndex>toIndex){
			firstIndex = 0;
			pageBean.setCurPage(1);
		}
		List<Order> orderList = ordersList.subList(firstIndex, toIndex);
		
		session.setAttribute("orderList", orderList);
		session.setAttribute("pageBean", pageBean);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("manager/orderManager");
		return mv;
	}

}
