package com.iwork.mapper;

import com.iwork.bean.User;

import java.util.List;

public interface UserMapper {
    public User selectByUserId(Integer id);//通过ID查找用户

    List<User> selectByisManager();//查找管理员

}
