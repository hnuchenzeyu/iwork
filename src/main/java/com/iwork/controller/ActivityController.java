package com.iwork.controller;

import com.iwork.bean.Activity;
import com.iwork.service.ActivityService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;

@Controller
@RequestMapping("/Activities")
public class ActivityController {

    @Resource
    private ActivityService service;

    @RequestMapping("/addWelfare")
    public ModelAndView addWelfare(HttpServletRequest request, Activity activity){
        ModelAndView mv = new ModelAndView();
        String titile = request.getParameter("title");
        String content = request.getParameter("content");
        activity.setActivityType(1);
        activity.setActivityTitle(titile);
        activity.setActivityContext(content);
        activity.setActivityCreateUserId(1001);
        activity.setActivityCreateTime(new Date());
        service.ActivityAdd(activity);
        mv.setViewName("redirect:welfareList");
        return mv;
    }
}
