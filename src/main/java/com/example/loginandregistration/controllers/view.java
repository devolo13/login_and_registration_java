package com.example.loginandregistration.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class view {
    @GetMapping("/test")
    public String test(){
        return "test.jsp";
    }
//    This project has gone as far as making the view controller and database connection, but nothing else. still needs models, repos, service, jsps, etc
}
