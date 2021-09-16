package com.xiexin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
    @RequestMapping("/")
    public String index1(){
        System.out.println("true = " + true);
        return "index";
    }

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/addBusiness")
    public String addBusiness(){
        return "addBusiness";
    }

    @RequestMapping("/vuedemo000")
    public String vuedemo000(){
        return "vuedemo000";
    }
    @RequestMapping("/vuedemo001")
    public String vuedemo001(){
        return "vuedemo001";
    }

    @RequestMapping("/huluwa")
    public String huluwa(){

        return "huluwa";
    }
    @RequestMapping("/vuedemo002")
    public String vuedemo002(){
        return "vuedemo002";
    }

    @RequestMapping("/vuedemo003")
    public String vuedemo003(){
        return "vuedemo003";
    }
}
