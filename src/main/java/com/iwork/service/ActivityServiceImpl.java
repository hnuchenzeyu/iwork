package com.iwork.service;

import com.iwork.bean.Activity;
import com.iwork.mapper.ActivityMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ActivityServiceImpl implements ActivityService {

    @Resource
    ActivityMapper mapper;

    public void ActivityAdd(Activity activity) {
        mapper.addActivity(activity);
    }

    public List<Activity> welfareList() {
        return mapper.listWelfares();
    }


}
