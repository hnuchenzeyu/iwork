package com.iwork.service;

import com.iwork.bean.Activity;
import com.iwork.bean.Comment;

import java.util.List;

public interface ActivityService {
    public void ActivityAdd(Activity activity);

    public List<Activity> ActivityList(int id);

    Activity selectActivityById(String id);

    void CommentAdd(Comment comment);

    List<Comment> selectCommentsByArticleId(String id);

    void deleteActivityById(String activityId);
}
