package com.iwork.controller;

import com.iwork.bean.Meeting;
import com.iwork.service.MeetService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping(value = "/Resource/schedule")
public class MeetController {

    @Resource
    private MeetService meetService;

    @RequestMapping("/showMeetings")
    @ResponseBody
    public ModelAndView showMeeting(){
        List<Meeting> list = meetService.showMeeting();
        ModelAndView modelAndView = new ModelAndView("schedule/meeting_asign");
        modelAndView.addObject("meetings",list);


//        if (null != list){
//            for (int i = 0;i<list.size();i++){
//                System.out.println("list:" + list.get(i).toString());
//            }
//        }else {
//            System.out.println("nothing");
//        }

        return modelAndView;
    }

}
