package com.iwork.mapper;

import com.iwork.bean.Activity;

import java.util.List;

public interface ActivityMapper {
    public void addActivity(Activity activity);

    public List<Activity> listActivities(Integer id);

    public Activity selectActivity(String id);//根据ID查找文章
}
