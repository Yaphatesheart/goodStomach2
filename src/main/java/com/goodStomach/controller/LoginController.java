package com.goodStomach.controller;

import com.goodStomach.entity.Kind;
import com.goodStomach.entity.User;
import com.goodStomach.service.KindService;
import com.goodStomach.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class LoginController {

//	@Override
//	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		String username = request.getParameter("username");
//		String password = request.getParameter("password");
//		ModelAndView mv = new ModelAndView();
//		HttpSession session = request.getSession();
//		UserService userService = new UserService();
//		KindService kindService = new KindService();
//		try {
//
//			User user = userService.selectByName(username);
//			List<Kind> kindList = kindService.selectAll();
//			if(user==null){
//				System.out.println("该用户不存在");
//				mv.setViewName("index");
//			}else{
//				if(user.getPassword().equals(password)==false){
//					System.out.println("密码错误");
//					mv.setViewName("index");
//				}
//				session.setAttribute("user", user);
//				session.setAttribute("kindList", kindList);
//
//				mv.setViewName("home");
//			}
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//
//		return mv;
//	}

    @Autowired
    private UserService userService;

    @Autowired
    private KindService kindService;

    @RequestMapping("/login")
    public String login(@PathVariable String username, @PathVariable String password) {
        User user = userService.selectByName(username);
        List<Kind> kindList = kindService.selectAll();

        String

        if (StringUtils.isEmpty(user)) {
            System.out.println("");
            return result;
        }

    }
}
