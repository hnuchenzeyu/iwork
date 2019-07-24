package com.iwork.controller;

import com.iwork.bean.Absence;
import com.iwork.bean.Excellent_Stafff;
import com.iwork.service.ExcellentStafffService_c;
import com.iwork.view.AttendanceStatistics;
import com.iwork.view.TodayAttendance;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@Controller
@RequestMapping("/Resource/clockin")
public class ExcellentStaffController_c {

    @Resource
    private ExcellentStafffService_c service;

    /**
     * 添加员工的优秀称号
     *
     * @Param es
     */
    @RequestMapping("/addExcellence")
    public void addExcellence(@RequestBody Excellent_Stafff es, HttpServletResponse response) throws IOException {
        es.setExcellentSelectTime(new Date());
        service.addExcellenceByUserId(es);
        response.getWriter().print("success");
    }

    /**
     * 在页面显示获奖员工
     *
     * @return
     */
    @RequestMapping("/showExcellence")
    public ModelAndView showExcellence() {
        ModelAndView mv = new ModelAndView("clockin/kaoqin_04");
        List<Excellent_Stafff> list = service.selectExcellence();
        mv.addObject("excellence", list);
        return mv;
    }

    /**
     * 删除一条优秀员工的信息
     *
     * @param excellentStaffId
     * @param response
     * @throws IOException
     */
    @RequestMapping("/deleteExcellentStaff")
    public void deleteExcellent(@RequestParam String excellentStaffId,
                                HttpServletResponse response) throws IOException {
        service.deleteExcellentById(excellentStaffId);
        response.getWriter().print("success");
    }

    /**
     * 添加缺勤记录
     *
     * @param absence
     * @param response
     * @throws IOException
     */
    @RequestMapping("/addAbsence")
    public void addAbsence(@RequestBody Absence absence, HttpServletResponse response) throws IOException {
        absence.setAbsenceTime(new Date());
        service.addAbsence(absence);
        response.getWriter().print("success");
    }

    /**
     * 获得所有缺勤名单
     *
     * @return
     */
    @RequestMapping("/getAbsence")
    @ResponseBody
    public List<Absence> getAbsence() {
        List<Absence> list = service.selectAbsence();
        return list;
    }

    /**
     * 删除选中的数据
     *
     * @param ids
     * @param response
     * @throws IOException
     */
    @RequestMapping("/delete_listTable")
    public void deleteAbsence(@RequestParam String ids, HttpServletResponse response) throws IOException {
        String[] prizeIds = ids.split(",");
        for (String id : prizeIds) {
            service.deleteAbsence(id);
        }
        response.getWriter().print("success");
    }

    /**
     * 获得今日考勤情况
     *
     * @return
     */
    @RequestMapping("/getTodayAttendance")
    @ResponseBody
    public List<TodayAttendance> generateTodayAttendance() {
        List<TodayAttendance> talist = new ArrayList<>();
        TodayAttendance todayAttendance = new TodayAttendance();
        List<Absence> list = service.selectAbsence();
        for (Absence a : list) {
            if (a.getAbsenceTimeQuantum().equals("上午") && a.getAbsenceType().equals("迟到/旷工"))
                todayAttendance.setMorning(todayAttendance.getMorning() + 1);
            else if (a.getAbsenceTimeQuantum().equals("下午") && a.getAbsenceType().equals("迟到/旷工"))
                todayAttendance.setAfternoon(todayAttendance.getAfternoon() + 1);
            else if (a.getAbsenceTimeQuantum().equals("晚上") && a.getAbsenceType().equals("迟到/旷工"))
                todayAttendance.setEvening(todayAttendance.getEvening() + 1);
        }
        talist.add(todayAttendance);
        return talist;
    }

    /**
     * 获得出勤统计数据
     *
     * @return
     */
    @RequestMapping("/getAttendanceStatistic")
    @ResponseBody
    public List<AttendanceStatistics> getAttendanceStatistic() {
        List<AttendanceStatistics> asList = new ArrayList<>();
        List<Absence> list = service.selectAbsence();
        Map<Integer, AttendanceStatistics> map = new HashMap<>();
        for (Absence absence : list) {
            Integer userId = absence.getAbsenceUserId();
            if (absence.getAbsenceType().equals("迟到/旷工")) {
                if (map.containsKey(userId)) {
                    AttendanceStatistics as = map.get(userId);
                    as.setLateTimes(as.getLateTimes() + 1);
                } else {
                    map.put(userId, new AttendanceStatistics());
                    map.get(userId).setLateTimes(1);
                    map.get(userId).setUser(absence.getUser());
                }
            } else if (absence.getAbsenceType().equals("请假")) {
                if (map.containsKey(userId)) {
                    AttendanceStatistics as = map.get(userId);
                    as.setLeaveTimes(as.getLeaveTimes() + 1);
                } else {
                    map.put(userId, new AttendanceStatistics());
                    map.get(userId).setLeaveTimes(1);
                    map.get(userId).setUser(absence.getUser());
                }
            } else if (absence.getAbsenceType().equals("出差")) {
                if (map.containsKey(userId)) {
                    AttendanceStatistics as = map.get(userId);
                    as.setBusinessTime(as.getBusinessTime() + 1);
                } else {
                    map.put(userId, new AttendanceStatistics());
                    map.get(userId).setBusinessTime(1);
                    map.get(userId).setUser(absence.getUser());
                }
            }
        }
        asList.addAll(map.values());
        return asList;
    }
}
