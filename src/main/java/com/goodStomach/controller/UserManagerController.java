package com.goodStomach.controller;

import com.kai.bean.PageBean;
import com.kai.bean.User;
import com.kai.web.service.UserService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class UserManagerController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		UserService userService = new UserService();
		String pageId = request.getParameter("id");
		int curPage = 0;
		if(pageId==null){
			curPage = 1;
		}else{
			curPage = Integer.parseInt(pageId);
		}
		System.out.println("curPage value is:"+curPage);
		
		List<User> usersList = userService.selectAll();//将查询结果存放在List集合里
		
		PageBean pageBean = new PageBean(usersList.size());//初始化PageBean对象  
		//设置当前页  
		pageBean.setCurPage(curPage);
		//这里page是从页面上获取的一个参数，代表页数  
		//获得分页大小  
		int pageSize = pageBean.getPageSize();
		//获得分页数据在list集合中的索引 
		int firstIndex = (curPage-1)*pageSize;
		int toIndex = curPage*pageSize;
		if(toIndex>usersList.size()){
			toIndex = usersList.size();
		}
		if(firstIndex>toIndex){
			firstIndex = 0;
			pageBean.setCurPage(1);
		}
		//截取数据集合，获得分页数据
		List<User> userList = usersList.subList(firstIndex, toIndex);
		
		session.setAttribute("userList", userList);
		session.setAttribute("pageBean", pageBean);
		
		mv.setViewName("manager/userManager");
		return mv;
	}

}









