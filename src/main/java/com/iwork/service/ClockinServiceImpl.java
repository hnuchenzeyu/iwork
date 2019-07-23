package com.iwork.service;

import com.iwork.bean.User;
import com.iwork.bean.Vocation;
import com.iwork.mapper.UserMapper;
import com.iwork.mapper.VocationMapper;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Iterator;
import java.util.List;
@Service
public class ClockinServiceImpl implements ClockinService{
    @Autowired
    private VocationMapper vocationMapper;
    @Autowired
    private UserMapper user;

    @Override
    public List<User> selectByisManager() {



        return user.selectByisManager();
    }

    @Override
    public User selectUserById(int id) {

        return user.selectByUserId(id);
    }

    @Override
    public List<Vocation> selectAllRecordByUserid(int id,int type) {
        List<Vocation> vocationList=  vocationMapper.selectAllRecordByUserid(id);


        Iterator<Vocation> it=vocationList.iterator();
        while (it.hasNext()){
            Vocation vocation =it.next();
            vocation.setUsername(user.selectByUserId(vocation.getUserId()).getUserName());
            vocation.setSubperiorname(user.selectByUserId(vocation.getSubperior()).getUserName());
            if (!vocation.getStatus().equals(type)){
                if (type==4&&vocation.getStatus().equals(5))
                    break;
                it.remove();

            }
        }

        return vocationList;
    }


    @Override
    public Boolean insertIntoVocation(Vocation record) {

        if (vocationMapper.insert(record)!=0)
            return true;
        return false;
    }
}
