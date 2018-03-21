package com.goodStomach.controller;

import com.kai.bean.Manager;
import com.kai.web.service.ManagerService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BackLoginSuccessController implements Controller {

    @Override
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        // TODO Auto-generated method stub
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        ModelAndView mv = new ModelAndView();

        ManagerService managerService = new ManagerService();
        Manager manager = managerService.selectManagerByName(name);

        if (manager == null) {
            System.out.println("该用户不存在");
            mv.setViewName("manager/login");
        } else {
            if (manager.getPassword().equals(password) == false) {
                System.out.println("密码错误");
                mv.setViewName("manager/login");
            }
            mv.setViewName("manager/home");
        }

        return mv;
    }

}
