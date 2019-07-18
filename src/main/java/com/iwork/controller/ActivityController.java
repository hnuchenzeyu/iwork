package com.iwork.controller;

import com.iwork.bean.Activity;
import com.iwork.service.ActivityService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/Resource")
public class ActivityController {

    @Resource
    private ActivityService service;

    /**
     * 添加福利
     * @param activity   json传过来的数据
     */
    @RequestMapping(value = "/addWelfare", method = RequestMethod.POST)
    public void addWelfare(@RequestBody Activity activity, HttpServletResponse response) throws IOException {
        activity.setActivityType(1);
        activity.setActivityId((int) (Math.random() * 100 + 5));
        activity.setActivityCreateUserId(1001);
        activity.setActivityCreateTime(new Date());
        System.out.println(activity.toString());
        service.ActivityAdd(activity);
        response.getWriter().print("sucess");
    }

    /**
     * 查找所有福利
     *
     * @return ModelAndView 实例
     */
    @RequestMapping(value = "/WelfareList")
    public ModelAndView listWelfare() {
        ModelAndView mv = new ModelAndView("activities");
        List<Activity> list = service.welfareList();
        mv.addObject("welfares", list);
        return mv;
    }

    /**
     * 查找具体的活动
     *
     * @param Id
     * @return
     */
    @RequestMapping("/article")
    public ModelAndView showArticle(
            @RequestParam(value = "id") String Id) {
        ModelAndView mv = new ModelAndView("article");
        Activity activity = service.selectActivityById(Id);
        System.out.println("ID:" + Id);
        System.out.println(activity);
        mv.addObject("article", activity);
        return mv;
    }
}
