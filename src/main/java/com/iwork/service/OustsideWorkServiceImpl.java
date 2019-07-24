package com.iwork.service;

import com.iwork.bean.OutsideWork;
import com.iwork.bean.User;
import com.iwork.mapper.OutsideWorkMapper;
import com.iwork.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
@Service
public class OustsideWorkServiceImpl implements OutsideWorkService {
    @Autowired
    private OutsideWorkMapper workMapper;
    @Autowired
    private UserMapper userMapper;
    @Override
    public List<OutsideWork> selectAlloutsideWork() {
        List<OutsideWork> workList=workMapper.selectAllWork();
        Iterator<OutsideWork> it=workList.iterator();
        while (it.hasNext()){
            OutsideWork work=it.next();
            String memberlist[]=work.getWorkmember().split(",");
            for(int i=0;i<memberlist.length;i++)
            {
                memberlist[i]=userMapper.selectByUserId(Integer.parseInt(memberlist[i])).getUserName();

            }


            work.setMemberlist(memberlist);
        }


        return workList;
    }

    @Override
    public void inserIntoWork(OutsideWork work) {


        Date d=new Date();
        SimpleDateFormat sdf =new SimpleDateFormat("yyyy-mm-dd");
        work.setWorkstarttime(sdf.format(d));
        work.setWorkstatus(1);
        work.setWorkprogress(0);
        workMapper.insert(work);
    }

    @Override
    public void updateWork(OutsideWork work) {
        workMapper.updateByPrimaryKeySelective(work);
    }
}
