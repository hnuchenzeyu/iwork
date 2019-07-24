package com.iwork.controller;

import com.iwork.bean.Excellent_Stafff;
import com.iwork.service.ExcellentStafffService_c;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/Resource/clockin")
public class ExcellentStaffController_c {

    @Resource
    private ExcellentStafffService_c service;

    /**
     * 添加员工的优秀称号
     * @Param es
     */
    @RequestMapping("/addExcellence")
    public void addExcellence(@RequestBody Excellent_Stafff es, HttpServletResponse response) throws IOException {
        es.setExcellentSelectTime(new Date());
        System.out.println(es.toString());
        service.addExcellenceByUserId(es);
        response.getWriter().print("success");
    }

    /**
     * 在页面显示获奖员工
     * @return
     */
    @RequestMapping("/showExcellence")
    public ModelAndView showExcellence(){
        ModelAndView mv = new ModelAndView("clockin/kaoqin_04");
        List<Excellent_Stafff> list = service.selectExcellence();
        mv.addObject("excellence",list);
        return mv;
    }

    @RequestMapping("/deleteExcellentStaff")
    public void deleteExcellent(@RequestParam String excellentStaffId,
                                HttpServletResponse response) throws IOException {
        service.deleteExcellentById(excellentStaffId);
        response.getWriter().print("success");
    }
}
