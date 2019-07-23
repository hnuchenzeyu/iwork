package com.iwork.service;

import com.iwork.mapper.MeetingMapper;
import com.iwork.view.meetingView;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MeetServiceImpl implements MeetService{

    @Resource
    MeetingMapper meetingMapper;

    @Override
    public List<meetingView> showMeeting() {

        

        meetingMapper.selectAllMeeting();
        return null;
    }
}
