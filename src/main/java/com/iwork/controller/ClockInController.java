package com.iwork.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/clockin")
public class ClockInController {
    @RequestMapping("/vocationApply")
    public String vocationApply(){


        return "Resource/Kaoqin_01.html";
    }

    @RequestMapping("/vocationManager")
    public String vocationManager(){

        return "Resource/clockin/vocation_manager.html";
    }
    @RequestMapping("/outsideWork")
    public String outsiteWork(){

        return "Resource/clockin/kaoqin_02.html";
    }
    @RequestMapping("/memberList")
    public String memberList(){

        return "Resource/clockin/kaoqin_03.html";
    }
    @RequestMapping("/excellentStaff")
    public String excellentStaff(){

        return "Resource/clockin/kaoqin_04.html";
    }
}
