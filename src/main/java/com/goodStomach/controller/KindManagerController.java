package com.goodStomach.controller;

import com.kai.bean.Kind;
import com.kai.bean.PageBean;
import com.kai.web.service.KindService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class KindManagerController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		KindService kindService = new KindService();
		
		List<Kind> kindsList = kindService.selectAll();
		
		String pageId = request.getParameter("id");
		int curPage = 0;
		if(pageId==null){
			curPage = 1;
		}else{
			curPage = Integer.parseInt(pageId);
		}
		System.out.println("curPage value is:"+curPage);
		PageBean pageBean = new PageBean(kindsList.size());//初始化PageBean对象  
		//设置当前页  
		pageBean.setCurPage(curPage);
		//这里page是从页面上获取的一个参数，代表页数  
		//获得分页大小  
		int pageSize = pageBean.getPageSize();
		//获得分页数据在list集合中的索引 
		int firstIndex = (curPage-1)*pageSize;
		int toIndex = curPage*pageSize;
		if(toIndex>kindsList.size()){
			toIndex = kindsList.size();
		}
		if(firstIndex>toIndex){
			firstIndex = 0;
			pageBean.setCurPage(1);
		}
		List<Kind> kindList = kindsList.subList(firstIndex, toIndex);
		
		session.setAttribute("kindList", kindList);
		session.setAttribute("pageBean", pageBean);
		mv.setViewName("manager/kindManager");
		return mv;
	}

}
