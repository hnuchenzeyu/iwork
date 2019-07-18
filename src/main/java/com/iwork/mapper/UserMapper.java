package com.iwork.mapper;

import com.iwork.bean.User;

public interface UserMapper {
    public User selectByUserId(Integer id);//通过ID查找用户
}
