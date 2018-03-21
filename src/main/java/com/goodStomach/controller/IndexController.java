package com.goodStomach.controller;

import com.goodStomach.entity.Kind;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping("/")
    public String showIndex() {
        return "index";
    }

    @RequestMapping("")
    public String showHome(@PathVariable Kind kind) {
        return "/home";
    }

}
