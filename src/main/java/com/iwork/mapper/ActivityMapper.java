package com.iwork.mapper;

import com.iwork.bean.Activity;

import java.util.List;

public interface ActivityMapper {
    public void addActivity(Activity activity);

    public List<Activity> listWelfares();
}
