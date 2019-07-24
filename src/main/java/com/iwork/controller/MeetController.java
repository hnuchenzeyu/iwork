package com.iwork.controller;

import com.iwork.bean.Meeting;
import com.iwork.service.MeetService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class MeetController {

    @Resource
    private MeetService meetService;

    @RequestMapping("/showMeetings")
    @ResponseBody
    public List<Meeting> showMeeting(){


        return meetService.showMeeting();
    }

}
