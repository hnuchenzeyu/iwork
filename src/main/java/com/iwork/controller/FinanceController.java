package com.iwork.controller;

import com.iwork.bean.prize;
import com.iwork.service.FinanceService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/Resource/finance")
public class FinanceController {

    @Resource
    private FinanceService service;

    /**
     * 添加绩效奖
     * @param p
     * @param response
     * @throws IOException
     */
    @RequestMapping("/addPrize")
    public void addPrize(@RequestBody prize p, HttpServletResponse response) throws IOException {
        System.out.println(p.toString());
        service.prizeAdd(p);
        response.getWriter().print("OK");
    }

    @RequestMapping("/showPrize")
    public ModelAndView showPrize(){
        ModelAndView mv = new ModelAndView("finance/finance_prize");
        List<prize> plist = service.showNewPrize();//查找最新一期的绩效奖（非获得绩效的名单）
        mv.addObject("prizes",plist);
        return mv;
    }
}
