package com.iwork.service;

import com.iwork.bean.Excellent_Stafff;
import com.iwork.mapper.ExcellentStaffMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ExcellentStafffService_cImpl implements ExcellentStafffService_c {

    @Resource
    private ExcellentStaffMapper mapper;

    @Override
    public void addExcellenceByUserId(Excellent_Stafff es) {
        mapper.addExcellenceByUserId(es);
    }

    @Override
    public List<Excellent_Stafff> selectExcellence() {
        return mapper.selectExcellence();
    }

    @Override
    public void deleteExcellentById(String excellentStaffId) {
        mapper.deleteExcellentById(excellentStaffId);
    }
}
