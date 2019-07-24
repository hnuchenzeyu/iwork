package com.iwork.service;

import com.iwork.bean.OutsideWork;
import com.iwork.mapper.OutsideWorkMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OustsideWorkServiceImpl implements OutsideWorkService {
    @Autowired
    private OutsideWorkMapper workMapper;

    @Override
    public List<OutsideWork> selectAlloutsideWork() {


        return workMapper.selectAllWork();
    }

    @Override
    public void inserIntoWork(OutsideWork work) {
        workMapper.insert(work);
    }

    @Override
    public void updateWork(OutsideWork work) {
        workMapper.updateByPrimaryKeySelective(work);
    }
}
