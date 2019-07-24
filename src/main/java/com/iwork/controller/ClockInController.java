package com.iwork.controller;

import com.alibaba.fastjson.JSON;
import com.iwork.bean.User;
import com.iwork.bean.Vocation;
import com.iwork.service.ClockinService;
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


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

@Controller
public class ClockInController {
    private static final Log logger= LogFactory.getLog(ClockInController.class);
    @Autowired
    private ClockinService clockinService;

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
     public void getVocationRecord(HttpServletRequest request,HttpServletResponse response){

            User user =(User)request.getSession().getAttribute("loginuser");
            //int userid =Integer.parseInt(request.getParameter("userid"));
            int userid =user.getUserId();
            int recordTypes =Integer.parseInt(request.getParameter("recordTypes"));

            logger.info("来了"+userid+recordTypes);
            List<Vocation> vList=clockinService.selectAllRecordByUserid(userid,recordTypes);
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
    @RequestMapping("/testAj")
    @ResponseBody
    public void testAj(HttpServletResponse response){
//        List<Vocation> vList=clockinService.selectAllRecordByUserid(1,3);
//        response.setCharacterEncoding("utf-8");
//        try {
//            PrintWriter writer =response.getWriter();
//            JSONArray jsonArray =JSONArray.fromObject(vList);
//            int i=1;
//            logger.info("开始获取表格数据"+jsonArray.toString());
//            String json = "{\"total\":" + vList.size() + ",\"rows\":" + jsonArray.toString() + "}";
//            writer.print(json);
//
//        } catch (IOException e) {
//            e.printStackTrace();
//        }






    }
    @RequestMapping("vocationManager")
    public String vocationManager(){

        return "clockin/vocation_manager";
    }
    @RequestMapping("outsideWork")
    public String outsiteWork(){

        return "clockin/kaoqin_02";
    }
    @RequestMapping("/memberList")
    public String memberList(){

        return "clockin/kaoqin_03";
    }
    @RequestMapping("/excellentStaff")
    public String excellentStaff(){

        return "clockin/kaoqin_04";
    }
}
