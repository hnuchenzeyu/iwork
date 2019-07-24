package com.iwork.mapper;

import com.iwork.bean.OutsideWork;

import java.util.List;

public interface OutsideWorkMapper {
    int deleteByPrimaryKey(Integer workid);

    int insert(OutsideWork record);

    int insertSelective(OutsideWork record);

    OutsideWork selectByPrimaryKey(Integer workid);

    int updateByPrimaryKeySelective(OutsideWork record);

    int updateByPrimaryKey(OutsideWork record);
    List<OutsideWork> selectAllWork();
}