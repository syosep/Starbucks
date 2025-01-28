package com.example.starbucks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class HomeController {

    @GetMapping("/")
    public String index() {
        return "index"; // index.jsp를 반환
    }

    @GetMapping("/about")
    public String about() {
        return "about"; // about.jsp를 반환
    }

    @GetMapping("/header")
    public String header() {
        return "header";
    }

    @GetMapping("/footer")
    public String footer() {
        return "footer";
    }

    @GetMapping("/product")
    public String product() {
        return "product";
    }

    @GetMapping("/promotion")
    public String promotion() {
        return "promotion";
    }
}
