package com.iwork.controller;

import com.iwork.service.MeetService;
import com.iwork.view.meetingView;
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
    public List<meetingView> showMeeting(){
        return meetService.showMeeting();
    }

}
