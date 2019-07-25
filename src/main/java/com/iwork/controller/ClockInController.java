package com.iwork.controller;

import com.alibaba.fastjson.JSON;
import com.iwork.bean.OutsideWork;
import com.iwork.bean.User;
import com.iwork.bean.Vocation;
import com.iwork.service.ClockinService;
import com.iwork.service.OutsideWorkService;
import net.sf.json.JSONArray;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Controller
public class ClockInController {
    private static final Log logger= LogFactory.getLog(ClockInController.class);
    @Autowired
    private ClockinService clockinService;

    @Autowired
    public OutsideWorkService workService;

    private List<User> userList;
    @RequestMapping("/vocationApply")
    public String vocationApply(HttpServletRequest request, Model model){
        HttpSession session =request.getSession();
        User loguser =(User) session.getAttribute("loguser");
        session.setAttribute("loginuser",clockinService.selectUserById(1));//暂时在这传入user
        logger.info("获取user"+clockinService.selectUserById(1).getUserName());
//        if (loguser!=null){
//               userList= clockinService.selectByisManager();
//               model.addAttribute("managers",userList);
//        }//
        userList= clockinService.selectByisManager();
        model.addAttribute("managers",userList);
        return "clockin/kaoqin_01";
    }


    @RequestMapping("/vocationRecordSelf")
    @ResponseBody
     public void getVocationRecord(HttpServletRequest request,HttpServletResponse response) throws IOException {

            User user =(User)request.getSession().getAttribute("loginuser");
            //int userid =Integer.parseInt(request.getParameter("userid"));
            int userid =user.getUserId();
            int recordTypes =Integer.parseInt(request.getParameter("recordTypes"));
            List<Vocation> vList;
            logger.info("来了"+userid+recordTypes);

            vList=clockinService.selectAllRecordByUserid(userid,recordTypes);
            if (recordTypes==4)
                vList.addAll(clockinService.selectAllRecordByUserid(userid,5));
            response.setCharacterEncoding("utf-8");

            PrintWriter writer =response.getWriter();
            JSONArray jsonArray =JSONArray.fromObject(vList);
            logger.info("开始获取表格数据"+jsonArray.toString());
            String json = "{\"total\":" + vList.size() + ",\"rows\":" + jsonArray.toString() + "}";
            writer.print(json);

     }
    @ResponseBody
    @RequestMapping("/vocationInsert")
     public void vocationInsert(@RequestBody Vocation vocation,HttpServletResponse response) throws IOException {
            logger.info("进入控制器"+vocation.toString());
            clockinService.insertIntoVocation(vocation);
            response.setCharacterEncoding("utf-8");
            PrintWriter pw =response.getWriter();
            pw.write("msg:'插入成功！'");
     }

     @ResponseBody
     @RequestMapping("/deleteVocation")
     public void DeleteVocation(@RequestParam String vocationId,HttpServletResponse response) throws IOException {
         logger.info("已进入后台");

         int uid =Integer.parseInt(vocationId);
        logger.info(vocationId);
        clockinService.deleteVocationById(uid);
        response.setCharacterEncoding("utf-8");
        PrintWriter pw =response.getWriter();
        pw.write("msg:'删除成功！'");

     }




    @RequestMapping("vocationManager")
    public String vocationManager(HttpServletRequest request){
        request.getSession().setAttribute("loginmanager",clockinService.selectUserById(1001));

        return "clockin/vocation_manager";
    }
    @ResponseBody
    @RequestMapping("/allRecord")
    public void vocationRecordAll(HttpServletRequest request,HttpServletResponse response){
        User manager=(User)request.getSession().getAttribute("loginmanager");
        int managerId=manager.getUserId();
        int recordTypes =Integer.parseInt(request.getParameter("recordTypes"));
        logger.info("allrecord"+managerId+recordTypes);
        List<Vocation> vList=clockinService.selectAllRecordBySubid(managerId,recordTypes,0);
        response.setCharacterEncoding("utf-8");
        try {
            PrintWriter writer =response.getWriter();
            JSONArray jsonArray =JSONArray.fromObject(vList);
            logger.info("开始获取表格数据"+jsonArray.toString());
            String json = "{\"total\":" + vList.size() + ",\"rows\":" + jsonArray.toString() + "}";
            writer.print(json);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @ResponseBody
    @RequestMapping("/permitVocation")
    public void permitVocation(@RequestParam String vocationId,HttpServletResponse response) throws IOException {
        int vId=Integer.parseInt(vocationId);
        Vocation vocation =new Vocation();
        vocation.setVocationId(vId);
        vocation.setStatus(1);
        clockinService.updateByPrimaryKeySelective(vocation);
        responseMsg("msg:'已批准'",response);

    }
    @ResponseBody
    @RequestMapping("/rejectVocation")
    public void rejectVocation(@RequestParam String vocationId,HttpServletResponse response) throws IOException {
        int vId=Integer.parseInt(vocationId);
        Vocation vocation =new Vocation();
        vocation.setVocationId(vId);
        vocation.setStatus(5);
        clockinService.updateByPrimaryKeySelective(vocation);
        responseMsg("msg:'驳回成功'",response);

    }

    public void responseMsg(String msg,HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        PrintWriter pw = response.getWriter();
        pw.write(msg);
        pw.flush();
        pw.close();
    }

    @RequestMapping("outsideWork")
    public String outsiteWork(Model model){

        model.addAttribute("outsideWorks",workService.selectAlloutsideWork());

        return "clockin/kaoqin_02";
    }

    @RequestMapping("/insertIntoWork")
    public void insertIntoWork(HttpServletResponse response,@RequestBody OutsideWork work) throws IOException {
        logger.info("insertIntoWork");
        if (work!=null)
            logger.info(work.getWorkmember()+work.getWorktitle()+work.getWorkdescription());
        workService.inserIntoWork(work);

        logger.info("afterIntoWork");
        responseMsg("msg:'插入成功'",response);

    }
    @ResponseBody
    @RequestMapping("/workDetail")
    public ModelAndView memberList(HttpServletRequest request,HttpServletResponse response,Model model){
        ModelAndView modelAndView =new ModelAndView("clockin/work_detail");
        OutsideWork work = (OutsideWork) request.getAttribute("work");
        model.addAttribute("work",work);
        return modelAndView;
    }
    @RequestMapping("/excellentStaff")
    public String excellentStaff(){

        return "clockin/kaoqin_04";
    }

    @RequestMapping("/createWork")
    public String createWork(Model model){
        List<User> userList =clockinService.selectAllUser();
        model.addAttribute("userList",userList);


        return "clockin/new_work";
    }
}
