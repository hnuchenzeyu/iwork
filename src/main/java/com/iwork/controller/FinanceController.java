package com.iwork.controller;

import com.iwork.bean.prize;
import com.iwork.bean.staff_wage;
import com.iwork.service.FinanceService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
     *
     * @param p
     * @param response
     * @throws IOException
     */
    @RequestMapping("/addPrize")
    public void addPrize(@RequestBody prize p, HttpServletResponse response) throws IOException {
        service.prizeAdd(p);
        response.getWriter().print("Success");
    }

    /**
     * 显示最新一期的绩效页面
     *
     * @return
     */
    @RequestMapping("/showPrize")
    public ModelAndView showPrize() {
        ModelAndView mv = new ModelAndView("finance/finance_prize");
        List<prize> plist = service.showNewPrize();//查找最新一期的绩效奖（非获得绩效的名单）
        List<staff_wage> swList = null;
        if (plist != null && plist.size() != 0) {
            swList = service.findWages(plist.get(0).getTerms());
        }
        mv.addObject("prizes", plist);
        mv.addObject("staff_wages", swList);
        return mv;
    }

    /**
     * 添加获得绩效奖的人员
     *
     * @param sw       一条绩效获奖实体
     * @param response
     * @throws IOException
     */
    @RequestMapping("/addPrizeWinner")
    public void addPrizeWinner(@RequestBody staff_wage sw, HttpServletResponse response) throws IOException {
        service.addStaff_Wage(sw);
        response.getWriter().print("Success");
    }

    /**
     * 期数改变时，改变页面显示的数据
     *
     * @param terms 期数
     * @return
     */
    @RequestMapping("/changePrizeAndWage")
    public ModelAndView changePageData(@RequestParam String terms) {
        ModelAndView mv = new ModelAndView("finance/finance_prize");
        List<prize> plist = service.showPrize(terms);//查找指定一期的绩效奖（非获得绩效的名单）
        List<staff_wage> swList = null;
        if (plist != null && plist.size() != 0) {
            swList = service.findWages(plist.get(0).getTerms());//名单
        }
        mv.addObject("prizes", plist);
        mv.addObject("staff_wages", swList);
        return mv;
    }

    /**
     * 删除prize表的记录
     * @param ids
     */
    @RequestMapping("/delete_prizeClass")
    public void deletePrize(@RequestParam String ids,HttpServletResponse response) throws IOException {
        String[] prizeIds = ids.split(",");
        for (String id : prizeIds) {
//            System.out.println("Id:"+id);
            service.deletePrize(id);
        }
        response.getWriter().print("success");
    }

    /**
     * 删除staff_wage表的记录
     * @param ids
     */
    @RequestMapping("/delete_excellent_staff")
    public void deleteStaff_Wage(@RequestParam String ids,HttpServletResponse response) throws IOException {
        String[] prizeIds = ids.split(",");
        for (String id : prizeIds) {
//            System.out.println("Id:"+id);
            service.deleteStaff_Wage(id);
        }
        response.getWriter().print("success");
    }
}
