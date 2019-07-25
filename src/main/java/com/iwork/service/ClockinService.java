package com.iwork.service;

import com.iwork.bean.OutsideWork;
import com.iwork.bean.User;
import com.iwork.bean.Vocation;

import java.util.List;

public interface ClockinService {
    List<Vocation> selectAllRecordByUserid(int id,int type);
    List<User>  selectByisManager();
    User selectUserById(int id);
    Boolean insertIntoVocation(Vocation record);
    Boolean deleteVocationById(int vid);
    List<Vocation>selectAllRecordBySubid(int id,int type,int refresh);
    int updateByPrimaryKeySelective(Vocation record);
    void UpdateStatus();
    List<User> selectAllUser();
    List<Vocation> selectRecordByStatus();
}
