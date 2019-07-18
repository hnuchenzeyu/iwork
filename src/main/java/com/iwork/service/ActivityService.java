package com.iwork.service;

import com.iwork.bean.Activity;

import java.util.List;

public interface ActivityService {
    public void ActivityAdd(Activity activity);

    public List<Activity> welfareList();
}
