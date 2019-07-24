package com.iwork.service;

import com.iwork.bean.Meeting;
import com.iwork.mapper.MeetingMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MeetServiceImpl implements MeetService{

    @Resource
    MeetingMapper meetingMapper;

    @Override
    public List<Meeting> showMeeting() {

        

        return meetingMapper.selectAllMeeting();
    }
}
