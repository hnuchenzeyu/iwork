package com.iwork.controller;

import com.iwork.bean.Finance;
import com.iwork.bean.Project_Cost;
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
        List<prize> plist = service.showNewPrize(1);//查找最新一期的绩效奖（非获得绩效的名单）
        List<staff_wage> swList = null;
        if (plist != null && plist.size() != 0) {
            swList = service.findWages(plist.get(0));
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
    public ModelAndView changePageData(@RequestParam String classPrize, @RequestParam String terms) {
        ModelAndView mv = new ModelAndView();
        if (classPrize.equals("1"))
            mv.setViewName("finance/finance_prize");
        else if (classPrize.equals("2"))
            mv.setViewName("finance/finance_welfare");
        prize p = new prize();
        p.setPrizeClass(Integer.parseInt(classPrize));
        p.setTerms(Integer.parseInt(terms));
        List<prize> plist = service.showPrize(p);//查找指定一期的绩效奖（非获得绩效的名单）
        List<staff_wage> swList = null;
        if (plist != null && plist.size() != 0) {
            swList = service.findWages(plist.get(0));//名单
        }
        mv.addObject("prizes", plist);
        mv.addObject("staff_wages", swList);
        return mv;
    }

    /**
     * 删除prize表的记录
     *
     * @param ids
     */
    @RequestMapping("/delete_prizeClass")
    public void deletePrize(@RequestParam String ids, HttpServletResponse response) throws IOException {
        String[] prizeIds = ids.split(",");
        for (String id : prizeIds) {
//            System.out.println("Id:"+id);
            service.deletePrize(id);
        }
        response.getWriter().print("success");
    }

    /**
     * 删除staff_wage表的记录
     *
     * @param ids
     */
    @RequestMapping("/delete_excellent_staff")
    public void deleteStaff_Wage(@RequestParam String ids, HttpServletResponse response) throws IOException {
        String[] prizeIds = ids.split(",");
        for (String id : prizeIds) {
//            System.out.println("Id:"+id);
            service.deleteStaff_Wage(id);
        }
        response.getWriter().print("success");
    }

    /**
     * 显示最新一期的绩效页面
     *
     * @return
     */
    @RequestMapping("/showWelfare")
    public ModelAndView showWelfare() {
        ModelAndView mv = new ModelAndView("finance/finance_welfare");
        List<prize> plist = service.showNewPrize(2);//查找最新一期的福利（非获得福利的名单）
        List<staff_wage> swList = null;
        if (plist != null && plist.size() != 0) {
            swList = service.findWages(plist.get(0));
        }
        mv.addObject("prizes", plist);
        mv.addObject("staff_wages", swList);
        return mv;
    }

    /**
     * 添加一条项目流水
     *
     * @param project_cost
     * @param response
     * @throws IOException
     */
    @RequestMapping("/addProjectCost")
    public void addProjectCost(@RequestBody Project_Cost project_cost,
                               HttpServletResponse response) throws IOException {
        service.addProject_Cost(project_cost);

        response.getWriter().print("success");
    }

    /**
     * 显示项目流水
     *
     * @return
     */
    @RequestMapping("/showProjectCost")
    public ModelAndView showProjectCost() {
        ModelAndView mv = new ModelAndView("finance/finance_project_cost");
        List<Project_Cost> list = service.showProjectCosts();
        mv.addObject("ProjectCosts", list);
        return mv;
    }

    /**
     * 删除多条项目流水数据
     *
     * @param ids
     * @param response
     * @throws IOException
     */
    @RequestMapping("/delete_project_cost")
    public void deleteProjectCost(@RequestParam String ids,
                                  HttpServletResponse response) throws IOException {

        String[] prizeIds = ids.split(",");
        for (String id : prizeIds) {
//            System.out.println("Id:"+id);
            service.deleteProject_Cost(id);
        }
        response.getWriter().print("success");
    }

    /**
     * 添加一条财务数据
     *
     * @param finance
     * @param response
     */
    @RequestMapping("/addFinance")
    public void addFinance(@RequestBody Finance finance,
                           HttpServletResponse response) throws IOException {
        service.addFinance(finance);
        response.getWriter().print("request from addFinance");
    }

    /**
     * 显示财务信息到页面
     * @return
     */
    @RequestMapping("/showFinance")
    public ModelAndView showFinance() {
        ModelAndView mv = new ModelAndView("finance/finance_company_cost");
        List<Finance> list = service.showFinanceCost();
        List<String> years = service.findYears();//查询存在的年份
        mv.addObject("financeCosts",list);
        mv.addObject("years",years);
        return mv;
    }

    /**
     * 删除多条finance数据
     */
    @RequestMapping("/delete_finance")
    public void deleteFinance(@RequestParam String ids,
                              HttpServletResponse response) throws IOException {
        String[] fIds = ids.split(",");
        for (String id:fIds){
            service.deleteFinance(id);
        }
        response.getWriter().print("success");
    }
}
